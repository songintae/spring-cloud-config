# spring-cloud-config

스프링 클라우드 Config Server 예제


## Spring Cloud Config Server
스프링 설정 정보를 제공하는 Cloud 서버 제공 
- 공식문서 : https://docs.spring.io/spring-cloud-config/docs/current/reference/html/#_spring_cloud_config_server

Config 서버는 아래와 같은 형식의 Endpoint를 통해 설정 정보를 제공한다.
- /{application}/{profile}[/{label}]
- /{application}-{profile}.yml
- /{label}/{application}-{profile}.yml
- /{application}-{profile}.properties
- /{label}/{application}-{profile}.properties

## Spring Cloud Config Client
스프링 Cloud Config Server에서 제공하는 설정정보를 사용하는 Client
- 공식문서 : https://docs.spring.io/spring-cloud-config/docs/current/reference/html/#_spring_cloud_config_client

ConfigServicePropertySourceLocator가 등록되어 Config Server의 설정정보를 읽어온다
