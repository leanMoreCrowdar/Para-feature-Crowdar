Feature: test
  
    Scenario Outline: Asignar un usuario a la ejecucion de un test case (<idioma>)
    Given Existe una run Run de Automation creado por automation.ltm y 1234 con estado IN_PROGRESS para el proyecto Proyecto de Automation con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run Run de Automation del proyecto Proyecto de Automation
    And el idioma del sistema está en <idioma>
    And la run posee escenarios ejecutados con multiples status
    When visualiza grafico escenarios ejecutados por status
    Then se visualiza tooltip con informacion correspondiente a la seccion del grafico seleccionada
