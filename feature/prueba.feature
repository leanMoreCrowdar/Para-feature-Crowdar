@Api @EN @ES
Feature: Eliminar Proyecto

  @Projects @DeleteProject @Regresion @Smoke
  Scenario Outline: Eliminacion de un proyecto
    Given Existe el proyecto Proyecto de Automation Backend creado por <usuario> y <contraseña>
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonRequest>' y '<datos>'
    Then se obtuvo el status code <statusCode>
    #And se obtuvo el response esperado en <entity> con el <jsonResponse>

    Examples:
      | usuario        | contraseña | jsonRequest                | statusCode | operation    | entity   | jsonResponse               | datos                                          |
      | automation.ltm | 1234       | Projects/rq_delete_project | 200        | DELETE       | PROJECTS | Projects/rs_delete_project |                                                |
