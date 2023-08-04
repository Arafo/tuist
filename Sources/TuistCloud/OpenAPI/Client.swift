// Generated by swift-openapi-generator, do not modify.
@_spi(Generated) import OpenAPIRuntime
#if os(Linux)
@preconcurrency import Foundation
#else
import Foundation
#endif
public struct Client: APIProtocol {
    /// The underlying HTTP client.
    private let client: UniversalClient
    /// Creates a new client.
    /// - Parameters:
    ///   - serverURL: The server URL that the client connects to. Any server
    ///   URLs defined in the OpenAPI document are available as static methods
    ///   on the ``Servers`` type.
    ///   - configuration: A set of configuration values for the client.
    ///   - transport: A transport that performs HTTP operations.
    ///   - middlewares: A list of middlewares to call before the transport.
    public init(
        serverURL: URL,
        configuration: Configuration = .init(),
        transport: any ClientTransport,
        middlewares: [any ClientMiddleware] = []
    ) {
        self.client = .init(
            serverURL: serverURL,
            configuration: configuration,
            transport: transport,
            middlewares: middlewares
        )
    }
    private var converter: Converter { client.converter }
    /// - Remark: HTTP `GET /api/projects`.
    /// - Remark: Generated from `#/paths//api/projects/get(listProjects)`.
    public func listProjects(_ input: Operations.listProjects.Input) async throws
        -> Operations.listProjects.Output
    {
        try await client.send(
            input: input,
            forOperation: Operations.listProjects.id,
            serializer: { input in
                let path = try converter.renderedRequestPath(
                    template: "/api/projects",
                    parameters: []
                )
                var request: OpenAPIRuntime.Request = .init(path: path, method: .get)
                suppressMutabilityWarning(&request)
                try converter.setHeaderFieldAsText(
                    in: &request.headerFields,
                    name: "accept",
                    value: "application/json"
                )
                return request
            },
            deserializer: { response in
                switch response.statusCode {
                case 200:
                    let headers: Operations.listProjects.Output.Ok.Headers = .init()
                    try converter.validateContentTypeIfPresent(
                        in: response.headerFields,
                        substring: "application/json"
                    )
                    let body: Operations.listProjects.Output.Ok.Body =
                        try converter.getResponseBodyAsJSON(
                            Components.Schemas.Projects.self,
                            from: response.body,
                            transforming: { value in .json(value) }
                        )
                    return .ok(.init(headers: headers, body: body))
                default: return .undocumented(statusCode: response.statusCode, .init())
                }
            }
        )
    }
    /// - Remark: HTTP `POST /api/projects`.
    /// - Remark: Generated from `#/paths//api/projects/post(createProject)`.
    public func createProject(_ input: Operations.createProject.Input) async throws
        -> Operations.createProject.Output
    {
        try await client.send(
            input: input,
            forOperation: Operations.createProject.id,
            serializer: { input in
                let path = try converter.renderedRequestPath(
                    template: "/api/projects",
                    parameters: []
                )
                var request: OpenAPIRuntime.Request = .init(path: path, method: .post)
                suppressMutabilityWarning(&request)
                try converter.setQueryItemAsText(
                    in: &request,
                    name: "name",
                    value: input.query.name
                )
                try converter.setQueryItemAsText(
                    in: &request,
                    name: "organization",
                    value: input.query.organization
                )
                try converter.setHeaderFieldAsText(
                    in: &request.headerFields,
                    name: "accept",
                    value: "application/json"
                )
                return request
            },
            deserializer: { response in
                switch response.statusCode {
                case 200:
                    let headers: Operations.createProject.Output.Ok.Headers = .init()
                    try converter.validateContentTypeIfPresent(
                        in: response.headerFields,
                        substring: "application/json"
                    )
                    let body: Operations.createProject.Output.Ok.Body =
                        try converter.getResponseBodyAsJSON(
                            Components.Schemas.Project.self,
                            from: response.body,
                            transforming: { value in .json(value) }
                        )
                    return .ok(.init(headers: headers, body: body))
                case 400:
                    let headers: Operations.createProject.Output.BadRequest.Headers = .init()
                    try converter.validateContentTypeIfPresent(
                        in: response.headerFields,
                        substring: "application/json"
                    )
                    let body: Operations.createProject.Output.BadRequest.Body =
                        try converter.getResponseBodyAsJSON(
                            Components.Schemas._Error.self,
                            from: response.body,
                            transforming: { value in .json(value) }
                        )
                    return .badRequest(.init(headers: headers, body: body))
                default: return .undocumented(statusCode: response.statusCode, .init())
                }
            }
        )
    }
    /// - Remark: HTTP `GET /api/organizations`.
    /// - Remark: Generated from `#/paths//api/organizations/get(listOrganizations)`.
    public func listOrganizations(_ input: Operations.listOrganizations.Input) async throws
        -> Operations.listOrganizations.Output
    {
        try await client.send(
            input: input,
            forOperation: Operations.listOrganizations.id,
            serializer: { input in
                let path = try converter.renderedRequestPath(
                    template: "/api/organizations",
                    parameters: []
                )
                var request: OpenAPIRuntime.Request = .init(path: path, method: .get)
                suppressMutabilityWarning(&request)
                try converter.setHeaderFieldAsText(
                    in: &request.headerFields,
                    name: "accept",
                    value: "application/json"
                )
                return request
            },
            deserializer: { response in
                switch response.statusCode {
                case 200:
                    let headers: Operations.listOrganizations.Output.Ok.Headers = .init()
                    try converter.validateContentTypeIfPresent(
                        in: response.headerFields,
                        substring: "application/json"
                    )
                    let body: Operations.listOrganizations.Output.Ok.Body =
                        try converter.getResponseBodyAsJSON(
                            Components.Schemas.Organizations.self,
                            from: response.body,
                            transforming: { value in .json(value) }
                        )
                    return .ok(.init(headers: headers, body: body))
                default: return .undocumented(statusCode: response.statusCode, .init())
                }
            }
        )
    }
    /// - Remark: HTTP `POST /api/organizations`.
    /// - Remark: Generated from `#/paths//api/organizations/post(createOrganization)`.
    public func createOrganization(_ input: Operations.createOrganization.Input) async throws
        -> Operations.createOrganization.Output
    {
        try await client.send(
            input: input,
            forOperation: Operations.createOrganization.id,
            serializer: { input in
                let path = try converter.renderedRequestPath(
                    template: "/api/organizations",
                    parameters: []
                )
                var request: OpenAPIRuntime.Request = .init(path: path, method: .post)
                suppressMutabilityWarning(&request)
                try converter.setQueryItemAsText(
                    in: &request,
                    name: "name",
                    value: input.query.name
                )
                try converter.setHeaderFieldAsText(
                    in: &request.headerFields,
                    name: "accept",
                    value: "application/json"
                )
                return request
            },
            deserializer: { response in
                switch response.statusCode {
                case 200:
                    let headers: Operations.createOrganization.Output.Ok.Headers = .init()
                    try converter.validateContentTypeIfPresent(
                        in: response.headerFields,
                        substring: "application/json"
                    )
                    let body: Operations.createOrganization.Output.Ok.Body =
                        try converter.getResponseBodyAsJSON(
                            Components.Schemas.Organization.self,
                            from: response.body,
                            transforming: { value in .json(value) }
                        )
                    return .ok(.init(headers: headers, body: body))
                case 400:
                    let headers: Operations.createOrganization.Output.BadRequest.Headers = .init()
                    try converter.validateContentTypeIfPresent(
                        in: response.headerFields,
                        substring: "application/json"
                    )
                    let body: Operations.createOrganization.Output.BadRequest.Body =
                        try converter.getResponseBodyAsJSON(
                            Components.Schemas._Error.self,
                            from: response.body,
                            transforming: { value in .json(value) }
                        )
                    return .badRequest(.init(headers: headers, body: body))
                default: return .undocumented(statusCode: response.statusCode, .init())
                }
            }
        )
    }
}
