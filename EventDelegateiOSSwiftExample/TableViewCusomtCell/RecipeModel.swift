/* 
Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let recipe: [Recipe]
}

// MARK: - Recipe
struct Recipe: Codable {
    let name, id, recipeDescription: String
    let tag: [String]
    let image: String
    let ingredient: [Ingredient]
    let ingredientGroup: [IngredientGroup]?
    let step: [Step]
    let notes, forked: String?

    enum CodingKeys: String, CodingKey {
        case name, id
        case recipeDescription = "description"
        case tag, image, ingredient, ingredientGroup, step, notes, forked
    }
}

// MARK: - Ingredient
struct Ingredient: Codable {
    let amount, unit, name, preparation: String?
}

// MARK: - IngredientGroup
struct IngredientGroup: Codable {
    let ingredient: [Ingredient]
    let name: String?
}

// MARK: - Step
struct Step: Codable {
    let stepDescription: String

    enum CodingKeys: String, CodingKey {
        case stepDescription = "description"
    }
}

