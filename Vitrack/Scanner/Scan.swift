import SwiftUI
import CoreML
import Vision

struct Scan: View {
    @Environment(\.presentationMode) var presentationMode // Para controlar el retroceso
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var predictionResult: String = "Selecciona una imagen para identificar la comida"
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @EnvironmentObject var sharedData: SharedData

    // Diccionario de alimentos y sus calorías
    let foodCalories: [String: String] = [
        "Arroz": "130 kcal (100 g)",
        "Sushi": "200 kcal (6 piezas)",
        "Arroz frito": "250 kcal (1 taza)",
        "Pan tostado": "70 kcal (1 rebanada)",
        "Croissant": "230 kcal (1 unidad)",
        "Hamburguesa": "300-500 kcal",
        "Pizza": "270 kcal (1 rebanada)",
        "Sandwich": "250-300 kcal",
        "Ramen": "430 kcal (1 paquete)",
        "Spaghetti": "220 kcal (1 taza)",
        "Potage": "150 kcal (1 taza)",
        "Salchichas": "150 kcal (1 unidad)",
        "Omelette": "160 kcal (1 unidad)",
        "Sopa de vegetales": "100 kcal (1 taza)",
        "Salmón": "200 kcal (100 g)",
        "Pollo frito": "320 kcal (1 pieza)",
        "Carne": "250 kcal (100 g)",
        "Pollo asado": "180 kcal (100 g)",
        "Camarón frito": "280 kcal (100 g)",
        "Ensalada de papa": "250 kcal (1 taza)",
        "Hot dog": "300 kcal (1 unidad)",
        "Papas fritas": "300 kcal (1 taza)",
        "Paella": "300 kcal (1 taza)",
        "Pan francés": "150 kcal (1 rebanada)",
        "Sopa minestrone": "110 kcal (1 taza)",
        "Nuggets de pollo": "290 kcal (6 piezas)",
        "Bagel": "250 kcal (1 unidad)",
        "Tacos": "150 kcal (1 taco)",
        "Nachos": "300 kcal (1 taza)",
        "Huevos revueltos": "140 kcal (2 huevos)",
        "Lasagna": "300 kcal (1 porción)",
        "Ensalada": "50 kcal (1 taza)",
        "Avena": "150 kcal (1 taza)",
        "Muffin": "250 kcal (1 unidad)",
        "Palomitas": "110 kcal (1 taza)",
        "Donas": "250 kcal (1 unidad)",
        // Frutas adicionales
        "Manzana": "52 kcal (100 g)",
        "Platano": "89 kcal (100 g)",
        "Coco": "354 kcal (100 g)",
        "Datil": "277 kcal (100 g)",
        "Kiwi": "61 kcal (100 g)",
        "Limon amarillo": "29 kcal (100 g)",
        "Limon": "29 kcal (100 g)",
        "Mango": "60 kcal (100 g)",
        "Naranja": "43 kcal (100 g)",
        "Mandarina": "53 kcal (100 g)",
        "Durazno": "39 kcal (100 g)",
        "Pera": "57 kcal (100 g)",
        "Granada": "83 kcal (100 g)",
        "Fresa": "32 kcal (100 g)",
        "Frambuesa": "52 kcal (100 g)"
    ]

    // Array de nombres de imágenes para alternar
    let fishImages = ["forks", "forks", "forks", "forks"]

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(red: 0.95, green: 0.95, blue: 0.97)
                .ignoresSafeArea()
            
            VStack {
                // Botón de "Back" en la esquina superior izquierda
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 3)
                    }
                    Spacer()
                }
                .padding(.leading, 16)
                .padding(.top, 50)
                
                Spacer()
                
                // Contenedor blanco centrado para el contenido principal
                VStack {
                    Text(predictionResult)
                        .font(.headline)
                        .padding()

                    if let image = selectedImage {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    } else {
                        Rectangle()
                            .fill(Color.gray.opacity(0.8))
                            .frame(width: 200, height: 200)
                            .overlay(Image(systemName: "camera.metering.unknown")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(.black.opacity(0.4))
                            )
                        
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                    HStack {
                        Button(action: {
                            sourceType = .camera
                            showImagePicker = true
                        }) {
                            Image(systemName: "camera.fill")
                                .resizable()
                                .frame(width: 30, height: 25)
                                .foregroundStyle(.black)
                        }
                        .padding()

                        Button(action: {
                            sourceType = .photoLibrary
                            showImagePicker = true
                        }) {
                            Image(systemName: "photo.fill")
                                .resizable()
                                .frame(width: 30, height: 25)
                                .foregroundStyle(.black)
                        }
                        .padding()

                        Button(action: {
                            if let image = selectedImage {
                                classifyImage(image)
                            }
                        }) {
                            Image(systemName: "paperplane.fill")
                                .resizable()
                                .frame(width: 30, height: 25)
                                .foregroundStyle(.black)
                        }
                        .padding()

                        
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding(.horizontal, 20) // Centra el rectángulo en la pantalla
                Button(action: {
                    if let foodName = predictionResult.split(separator: ":").first,
                       let calories = predictionResult.split(separator: ":").last {
                        let imageName = fishImages[sharedData.events.count % fishImages.count]
                        let event = Event(name: "\(foodName): \(calories)", date: sharedData.selectedDate, imageName: imageName)
                        sharedData.events.append(event)
                    }
                }) {
                    Rectangle()
                        .foregroundStyle(Color(red: 0.48, green: 0.25, blue: 0.86))
                        .frame(width: 250, height: 50)
                        .cornerRadius(30)
                        
                        .overlay(
                            Text("Guardar en Calendario")
                                .font(
                                    Font.custom("Arial", size: 14)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                        )
                        .padding(.top, 50)
                }
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: $selectedImage, sourceType: sourceType)
        }
    }
    
    func classifyImage(_ image: UIImage) {
        guard let model = try? VNCoreMLModel(for: VitaMo13().model) else {
            predictionResult = "Error al cargar el modelo"
            return
        }

        let request = VNCoreMLRequest(model: model) { request, error in
            if let results = request.results as? [VNClassificationObservation],
               let topResult = results.first {
                DispatchQueue.main.async {
                    let foodName = topResult.identifier
                    let calories = self.foodCalories[foodName] ?? "Calorías no disponibles"
                    
                    self.predictionResult = "\(foodName): \(calories)"
                    self.sharedData.identifiedFood = "\(foodName): \(calories)"
                    self.sharedData.selectedDate = Date()
                }
            } else {
                DispatchQueue.main.async {
                    self.predictionResult = "No se pudo identificar la comida"
                }
            }
        }

        guard let ciImage = CIImage(image: image) else {
            predictionResult = "No se pudo procesar la imagen"
            return
        }

        let handler = VNImageRequestHandler(ciImage: ciImage)
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                try handler.perform([request])
            } catch {
                DispatchQueue.main.async {
                    self.predictionResult = "Error al realizar la solicitud: \(error.localizedDescription)"
                }
            }
        }
    }
}
#Preview {
    Scan()
        
}

