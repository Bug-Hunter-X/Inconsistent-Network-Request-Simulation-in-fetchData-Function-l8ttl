func fetchData(completion: @escaping (Result<[Data], Error>) -> Void) {
    // Simulate network request with controlled failure conditions
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) { 
        // Simulate a network error scenario (e.g., no internet)
        if !NetworkManager.shared.isConnected() {
            completion(.failure(NSError(domain: "NetworkError", code: 1, userInfo: [NSLocalizedDescriptionKey: "No internet connection"]))) //More descriptive error
            return
        }

        // Simulate successful request
        let data = [Data(), Data()] // Simulate receiving data
        completion(.success(data))
    }
}

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    // Simulate checking internet connectivity (replace with actual implementation)
    func isConnected() -> Bool { 
        // Implement your actual network connectivity check here
        return true // Replace with actual check
    }
} 