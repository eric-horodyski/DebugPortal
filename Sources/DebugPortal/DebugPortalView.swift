import SwiftUI
import IonicPortals

let key = ""

let portal = Portal(name: "webapp", bundle: .module)

public struct DebugPortalView: View {
	
	public init() {
		PortalsRegistrationManager.shared.register(key: key)
	}
	
	public var body: some View {
		PortalView(portal: portal)
	}
}

#Preview {
	DebugPortalView()
}
