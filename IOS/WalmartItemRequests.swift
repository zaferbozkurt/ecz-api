#if swift(>=4.0)
@objcMembers public class WalmartItemRequests: WalmartItemAPIRequests {
    public override func registerAddItemRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestAddItem,
                                                                       reqClass: Item.self,
                                                                       respClass: Bool.self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func registerAddUserRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestAddUser,
                                                                       reqClass: Item.self,
                                                                       respClass: Bool.self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func registerClickDetailRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestClickDetail,
                                                                       reqClass: None.self,
                                                                       respClass: Item.self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func registerFindItemsRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestFindItems,
                                                                       reqClass: Int.self,
                                                                       respClass: [Item].self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func registerGetUsersRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestGetUsers,
                                                                       reqClass: Int.self,
                                                                       respClass: [Item].self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func unregisterAddItemRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func unregisterAddUserRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func unregisterClickDetailRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func unregisterFindItemsRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func unregisterGetUsersRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func addItem(item: Item, responseCompletionHandler: @escaping (Bool?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<Item, Bool, Any>(
            requestName: WalmartItemAPI.kRequestAddItem,
            requestPayload: item,
            respClass: Bool.self,
            responseItemType: nil,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? Bool, errorMessage) }
        )

        requestProcessor.execute()
    }

    public override func addUser(item: Item, responseCompletionHandler: @escaping (Bool?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<Item, Bool, Any>(
            requestName: WalmartItemAPI.kRequestAddUser,
            requestPayload: item,
            respClass: Bool.self,
            responseItemType: nil,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? Bool, errorMessage) }
        )

        requestProcessor.execute()
    }

    public override func clickDetail( responseCompletionHandler: @escaping (Item?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<None, Item, Any>(
            requestName: WalmartItemAPI.kRequestClickDetail,
            requestPayload: nil,
            respClass: Item.self,
            responseItemType: nil,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? Item, errorMessage) }
        )

        requestProcessor.execute()
    }

    public override func findItems(limit: Int, responseCompletionHandler: @escaping ([Item]?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<Int, [Item], Any>(
            requestName: WalmartItemAPI.kRequestFindItems,
            requestPayload: limit,
            respClass: [Item].self,
            responseItemType: Item.self,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? [Item], errorMessage) }
        )

        requestProcessor.execute()
    }

    public override func getUsers(limit: Int, responseCompletionHandler: @escaping ([Item]?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<Int, [Item], Any>(
            requestName: WalmartItemAPI.kRequestGetUsers,
            requestPayload: limit,
            respClass: [Item].self,
            responseItemType: Item.self,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? [Item], errorMessage) }
        )

        requestProcessor.execute()
    }
}

#else

public class WalmartItemRequests: WalmartItemAPIRequests {
    public override func registerAddItemRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestAddItem,
                                                                       reqClass: Item.self,
                                                                       respClass: Bool.self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func registerAddUserRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestAddUser,
                                                                       reqClass: Item.self,
                                                                       respClass: Bool.self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func registerClickDetailRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestClickDetail,
                                                                       reqClass: None.self,
                                                                       respClass: Item.self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func registerFindItemsRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestFindItems,
                                                                       reqClass: Int.self,
                                                                       respClass: [Item].self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func registerGetUsersRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: WalmartItemAPI.kRequestGetUsers,
                                                                       reqClass: Int.self,
                                                                       respClass: [Item].self,
                                                                       requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    public override func unregisterAddItemRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func unregisterAddUserRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func unregisterClickDetailRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func unregisterFindItemsRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func unregisterGetUsersRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func addItem(item: Item, responseCompletionHandler: @escaping (Bool?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<Item, Bool, Any>(
            requestName: WalmartItemAPI.kRequestAddItem,
            requestPayload: item,
            respClass: Bool.self,
            responseItemType: nil,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? Bool, errorMessage) }
        )

        requestProcessor.execute()
    }

    public override func addUser(item: Item, responseCompletionHandler: @escaping (Bool?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<Item, Bool, Any>(
            requestName: WalmartItemAPI.kRequestAddUser,
            requestPayload: item,
            respClass: Bool.self,
            responseItemType: nil,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? Bool, errorMessage) }
        )

        requestProcessor.execute()
    }

    public override func clickDetail( responseCompletionHandler: @escaping (Item?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<None, Item, Any>(
            requestName: WalmartItemAPI.kRequestClickDetail,
            requestPayload: nil,
            respClass: Item.self,
            responseItemType: nil,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? Item, errorMessage) }
        )

        requestProcessor.execute()
    }

    public override func findItems(limit: Int, responseCompletionHandler: @escaping ([Item]?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<Int, [Item], Any>(
            requestName: WalmartItemAPI.kRequestFindItems,
            requestPayload: limit,
            respClass: [Item].self,
            responseItemType: Item.self,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? [Item], errorMessage) }
        )

        requestProcessor.execute()
    }

    public override func getUsers(limit: Int, responseCompletionHandler: @escaping ([Item]?, ElectrodeFailureMessage?) -> Void) {
        let requestProcessor = ElectrodeRequestProcessor<Int, [Item], Any>(
            requestName: WalmartItemAPI.kRequestGetUsers,
            requestPayload: limit,
            respClass: [Item].self,
            responseItemType: Item.self,
            responseCompletionHandler: { data, errorMessage in responseCompletionHandler(data as? [Item], errorMessage) }
        )

        requestProcessor.execute()
    }
}
#endif
