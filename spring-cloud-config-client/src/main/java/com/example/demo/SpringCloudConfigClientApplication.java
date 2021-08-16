package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class SpringCloudConfigClientApplication implements EnvironmentAware {
    private Environment environment;
    public static void main(String[] args) {
        SpringApplication.run(SpringCloudConfigClientApplication.class, args);
    }

    @GetMapping("/name")
    public String getProjectName() {
        return environment.getProperty("project.name");
    }

    @Override
    public void setEnvironment(Environment environment) {
        this.environment = environment;
    }
}
