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

## Spring Cloud Bus
스프링에서 제공하는 cloud bus. 설정정보 갱신시 버스에 연결되 있는 서비스들에 RefreshRemoteApplicationEvent를 발행해서 갱신 시킨다
- 공식문서 : https://docs.spring.io/spring-cloud-bus/docs/3.0.3-SNAPSHOT/reference/html/#quick-start

스프링 Cloud bus는 Cloud Stream을 이용해서 이벤트를 전송하고, 해당 구현체는 크게 kafka, rabbitmq 등이 있다.


## Docker 적용

### Spring Boot Application Dockerfile 만들기
- 공식 문서 :  https://spring.io/guides/gs/spring-boot-docker/

### docker-compose container order 처리
- 공식 문서 : https://docs.docker.com/compose/startup-order/

