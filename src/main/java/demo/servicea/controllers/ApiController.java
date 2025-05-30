package demo.servicea.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ApiController {

    private final String version;

    public ApiController(@Value("${api.version}") String version) {
        this.version = version;
    }

    @GetMapping("/version")
    public String getVersion() {
        return version;
    }
}
