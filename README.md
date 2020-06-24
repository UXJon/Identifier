# Identifier

`Identifier<T>` gives a simple way to namespace identifiers that are unique to a given type. It is meant to prevent misspelling errors, while still allowing quick and easy custom identifiers when needed. 

Here is an example of usage with an Identifiable type:

	struct A : Identifiable, Codable {
		var id:Identifier<A> = .default
	}
	
	extension Identifier where T == A {
		static var `default` : Identifier<A> {"default"}
		
		static var commonId : Identifier<A> {"commonId"}
	}
	

Common identifiers can be added for a specific type by defining static vars on an extension. Ids defined in extensions can be used with dot-syntax:

	let a = A(id: .commonId)
	
Custom Ids can be provided using a string literal:

	let a = A(id: "MyCustomId")
	
