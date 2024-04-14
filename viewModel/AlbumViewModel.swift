import Foundation

class FetchAlbumImage: ObservableObject {
    @Published var result: JSONResult?
    
    func fetchApi() {
        guard let url = URL(string: "https://itunes.apple.com/lookup?id=909253&entity=album") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
            } else if let data = data {
                do {
                    let decodedResult = try JSONDecoder().decode(JSONResult.self, from: data)
                    DispatchQueue.main.async {
                        self.result = decodedResult
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }
        }.resume()
    }
}

