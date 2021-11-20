Feature: fetching User Details
 Scenario: testing the get call for User Details
  Given url 'https://reqres.in/api/users/2'
  When method GET
  Then status 200
  
 Scenario: tests POSTS
   Given url 'https://reqres.in/api/users'
   When request {"name":"morpheus","job":"leader"}
   And method post
   Then status 201
   And match responseType == 'json'
            #And assert responseTime < 2000
   And print 'Response of POST : ', response
   And response.status == 'success'
   And response.name == 'morpheus'
   And response.job == 'leader'
   And response.id == '91'
   
 Scenario: tests PUT
   Given url 'https://reqres.in/api/users/2'
   When request {"name":"morpheus","job":"zion resident"}
   And method PUT
   Then status 200
   And match responseType == 'json'
            #And assert responseTime < 2000
   And print 'Response of PUT : ', response
   And response.status == 'success'
   And response.name == 'morpheus'
   And response.job == 'zion resident'
   