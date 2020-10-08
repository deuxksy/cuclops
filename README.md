# spring-cloud-config-server-with-rdb
Spring Cloud Config Server 를 Git 또는 File 로 설정값을 저장 하지 않고  
RDB (개발시 H2 를 사용)를 이용해서 데이터 저장 하고 yml,json 로 값 뽑아 내기

## 1 접속 방법 
### 1.1 URL 패턴
http://localhost:8888/{application}/{profiles,...}/{label}  
/{application}/{profile}[/{label}]  
/{application}-{profile}.yml  
/{label}/{application}-{profile}.yml  
/{application}-{profile}.properties  
/{label}/{application}-{profile}.properties  

- http://localhost:8888/develop/A1-local,dev.json
- http://localhost:8888/master/A2-stage,prod.json

## 2 h2 db 접속 하기
- http://localhost:8888/h2-console/
  - jdbc:h2:mem:testdb