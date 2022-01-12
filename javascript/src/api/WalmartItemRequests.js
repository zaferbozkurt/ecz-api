// @flow

export default class WalmartItemRequests {
  constructor(bridge) {
    this._bridge = bridge;
  }

  /**
   * Registers a handler for a particular api. This allows JavaScript to handle a request from native.
   * @param handler The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
   */
  registerAddItemRequestHandler(handler: Function): Promise<any> {
    this._bridge.registerRequestHandler(
      'com.ecz.ern.api.request.addItem',
      handler,
    );
  }

  /**
   * Registers a handler for a particular api. This allows JavaScript to handle a request from native.
   * @param handler The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
   */
  registerAddUserRequestHandler(handler: Function): Promise<any> {
    this._bridge.registerRequestHandler(
      'com.ecz.ern.api.request.addUser',
      handler,
    );
  }

  /**
   * Registers a handler for a particular api. This allows JavaScript to handle a request from native.
   * @param handler The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
   */
  registerFindItemsRequestHandler(handler: Function): Promise<any> {
    this._bridge.registerRequestHandler(
      'com.ecz.ern.api.request.findItems',
      handler,
    );
  }

  /**
   * Registers a handler for a particular api. This allows JavaScript to handle a request from native.
   * @param handler The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
   */
  registerGetUsersRequestHandler(handler: Function): Promise<any> {
    this._bridge.registerRequestHandler(
      'com.ecz.ern.api.request.getUsers',
      handler,
    );
  }

  /**
   * Creates a Item in the store.
   * @param  item Item to add
   * @param timeout timeout in milliseconds
   * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Boolean }
   */
  addItem(item: any, timeout: number): Promise<any> {
    return this._bridge.sendRequest('com.ecz.ern.api.request.addItem', {
      data: item,
      timeout,
    });
  }

  /**
   * Creates a User Item in the store.
   * @param  item Item to add
   * @param timeout timeout in milliseconds
   * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Boolean }
   */
  addUser(item: any, timeout: number): Promise<any> {
    return this._bridge.sendRequest('com.ecz.ern.api.request.addUser', {
      data: item,
      timeout,
    });
  }

  /**
   * Returns all items from the system that the user has access to
   * @param {Object} opts Optional parameters
   * @param opts.limit maximum number of results to return
   * @param timeout timeout in milliseconds
   * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Array.<module:com.ecz.ern.model/Item> }
   */
  findItems(opts: any, timeout: number): Promise<any> {
    return this._bridge.sendRequest('com.ecz.ern.api.request.findItems', {
      data: opts,
      timeout,
    });
  }

  /**
   * Returns all users from the system
   * @param {Object} opts Optional parameters
   * @param opts.limit maximum number of results to return
   * @param timeout timeout in milliseconds
   * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Array.<module:com.ecz.ern.model/Item> }
   */
  getUsers(opts: any, timeout: number): Promise<any> {
    return this._bridge.sendRequest('com.ecz.ern.api.request.getUsers', {
      data: opts,
      timeout,
    });
  }
}
