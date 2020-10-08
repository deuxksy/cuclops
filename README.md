# zzizily-spring-cloud-config-server
Spring Cloud Config Server 를 구성하기 Git,RDB 로 구성 해보자  
RDB (H2)를 이용해서 데이터 저장

## 1. 접속 방법 
### 1.1. URL 패턴
http://localhost:8888/{application}/{profiles,...}/{label}  
/{application}/{profile}[/{label}]  
/{application}-{profile}.yml  
/{label}/{application}-{profile}.yml  
/{application}-{profile}.properties  
/{label}/{application}-{profile}.properties  

- http://localhost:8888/develop/A1-local,dev.json
- http://localhost:8888/master/A2-stage,prod.json

## 2. RDB (tag rdb)
h2 db 접속 하기  
- http://localhost:8888/h2-console/
  - jdbc:h2:mem:testdb
  
## 3. Git (tag git)

## 3.1. Redis
