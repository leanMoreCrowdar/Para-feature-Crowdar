Feature: Agregar Test cases a un Feature/Run

  @TestCases @AddTestToFeature @Regresion @ClearData
  Scenario Outline: Agregar test a un feature existente
    Given Existe el feature <feature> en el proyecto
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And se cambia el idioma a <idioma>
    When filtra los test por el proyecto Proyecto de Automation
    And selecciona un test de la lista y hace click en el enlace <enlace>
    And escribe un nombre para el feature: <feature> y agrega el test case
    And hace click en el boton Guardar de Agregar test a feature
    Then aparece una alerta con el mensaje: <mensaje>
    And aparece el icono de feature en la grilla

    @ES
    Examples:
      | idioma | feature               | enlace            | mensaje       |
      | ES     | Feature de Automation | Agregar a feature | Test agregado |

    @EN
    Examples:
      | idioma | feature               | enlace         | mensaje              |
      | EN     | Feature de Automation | Add to feature | Test have been added |

  @TestCases @AddTestToRun @Regresion @ClearData
  Scenario Outline: Agregar test a un run existente
    Given Existe una run <run>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And se cambia el idioma a <idioma>
    When filtra los test por el proyecto Proyecto de Automation
    And selecciona un test de la lista y hace click en el enlace <enlace>
    And escribe un nombre para el nuevo run <run> y agrega el test case
    And hace click en el boton Guardar de Agregar test a run
    Then aparece una alerta con el mensaje: <mensaje>
    And aparece el icono de feature en la grilla
    And se dirige a la pantalla Runs
    And verifico que para la run <run> la cantidad de escenarios es <cantEscenarios>

    @ES
    Examples:
      | idioma | run               | enlace        | mensaje      | cantEscenarios |
      | ES     | Run de Automation | Agregar a run | Test añadido | 1              |

    @EN
    Examples:
      | idioma | run               | enlace     | mensaje    | cantEscenarios |
      | EN     | Run de Automation | Add to run | Test added | 1              |