package com.build

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CodeBuildTestApplication

fun main(args: Array<String>) {
    runApplication<CodeBuildTestApplication>(*args)
}
