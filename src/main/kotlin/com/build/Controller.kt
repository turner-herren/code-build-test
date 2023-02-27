package com.build

import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class Controller {

    @GetMapping("/hello")
    fun helloWorld(): ResponseEntity<HelloWorldResponse> {
        return ResponseEntity.ok(HelloWorldResponse("world!"))
    }
}

data class HelloWorldResponse(
    val msg: String
)