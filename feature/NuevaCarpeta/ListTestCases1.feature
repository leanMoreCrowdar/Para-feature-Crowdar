Feature: Listar Test Cases

  @ListTestCases @TestCases @Regresion @EN @ES
  Scenario: Listar Test Cases
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    When se dirige a la pantalla Tests
    Then Verifica que todas las paginas contengan TestCases


  @ListTestCases @TestCases @Regresion @EN @ES @ClearData
  Scenario Outline: Listar Test Cases de un Proyecto
    Given Existe el test <test>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When filtra los test por el proyecto <proyecto>
    Then Verifica que aparezcan todos los tests correspondientes al proyecto <proyecto>

    Examples:
      | proyecto               | test               |
      | Proyecto de Automation | Test de Automation |


  @TestCases @SearchTestCases @EN @ES @ClearData @Regresion
  Scenario Outline: Búsqueda de un Test desde Pantalla Tests.
    Given Existe el test <valor>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When ingresa el valor a buscar <valor>
    Then aparecen listados los Tests que coinciden con el valor <valor> ingresado

    Examples:
      | valor                                                                                                                         |
      | Demo                                                                                                                          |
      | Test de Automation super mega archi largo Test de Automation super mega archi largo Test de Automation super mega archi largo |

  @TestCases @FilterTestCase @SearchTestCases @Regresion @EN @ES @ClearData
  Scenario Outline: Filtrado de test segun su tag
    Given Existe test <test> con el tag <tag>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When filtro por el tag a buscar <tag>
    Then se visualiza el <tag> en el filtro
    And verifico que el test <test> se encuentra en la lista

    Examples:
      | tag            | test               |
      | @AutomationTag | Test de Automation |

  @TestCases @SearchTestCases @Regresion @ClearData
  Scenario Outline: Filtrado de Tests segun su Automation type
    Given Existe un test <test> con el Tipo de Automatizacion <automatizacionBackend>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And se cambia el idioma a <idioma>
    When filtro por el Automation type a buscar <tipoAutomatizacion>
    Then se visualiza el <tipoAutomatizacion> en el filtro de Automation type

    @ES
    Examples:
      | idioma | tipoAutomatizacion    | test               | automatizacionBackend |
      | ES     | Automatizado          | Test de Automation | Automated             |
      | ES     | Para ser Automatizado | Test de Automation | To Be Automated       |
      | ES     | Ninguno               | Test de Automation | None                  |

    @EN
    Examples:
      | idioma | tipoAutomatizacion | test               | automatizacionBackend |
      | EN     | Automated          | Test de Automation | Automated             |
      | EN     | To Be Automated    | Test de Automation | To Be Automated       |
      | EN     | None               | Test de Automation | None                  |

  @ListTestCases @TestCases  @Regresion @SearchTestCases @ErrorTestCases
  Scenario Outline: El cliente realiza una busqueda de test con datos invalidos
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And se cambia el idioma a <idioma>
    When ingresa el valor a buscar <valor>
    Then No se visualizan tests con el criterio de busqueda ingresado y se visualiza el mensaje <mensaje>

    @ES
    Examples:
      | idioma | valor                        | mensaje                                    |
      | ES     | *///=)(                      | No tienes ningun test, crea uno desde cero |
      | ES     | *                            | No tienes ningun test, crea uno desde cero |
      | ES     | //////////////////////////// | No tienes ningun test, crea uno desde cero |
      | ES     | test inexistente123          | No tienes ningun test, crea uno desde cero |

    @EN
    Examples:
      | idioma | valor                        | mensaje                                            |
      | EN     | *///=)(                      | You do not have any tests, create one from scratch |
      | EN     | *                            | You do not have any tests, create one from scratch |
      | EN     | //////////////////////////// | You do not have any tests, create one from scratch |
      | EN     | test inexistente123          | You do not have any tests, create one from scratch |

  @ListTestCases @TestCases @Regresion @EN @ES @ClearData
  Scenario Outline: Verificar que al hacer click sobre el nombre del test me dirije a la pantalla de edicion de Test
    Given Existe el test <nombreTest>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When hace click sobre el nombre del testcase <nombreTest>
    Then se verifica que esta en la pagina de Editar Test

    Examples:
      | nombreTest         |
      | Test de Automation |

  @ListTestCases @TestCases @EN @ES @Regresion @ClearData
  Scenario Outline: Verificar que al descartar la eliminacion vuelve a la grilla de Tests
    Given Existe el test <testCase>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When El cliente realiza un click sobre el tacho de basura del test case cuyo titulo es <testCase>
    And click sobre el boton "No, atras|No, back"
    Then se visualiza la grilla el TestCases <testCase>

    Examples:
      | testCase           |
      | Test de Automation |

  @ListTestCases @TestCases @Regresion @EN @ES @ClearData @FilterTestCase
  Scenario Outline: Filtrado multiple de Tests segun su tag
    Given Existe test <test1> con el tag <tag1>
    And Existe test <test2> con el tag <tag2>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When filtro por el tag a buscar <tags>
    Then se visualiza el <tags> en el filtro
    And verifico que el test <test1> se encuentra en la lista
    And verifico que el test <test2> se encuentra en la lista

    Examples:
      | test1              | tag1           | test2                | tag2            | tags                           |
      | Test de Automation | @AutomationTag | Test de Automation 2 | @AutomationTag2 | @AutomationTag,@AutomationTag2 |

  @ListTestCases @TestCases @FilterTestCase @Regresion @EN @ES @ClearData
  Scenario Outline: Verificar que al eliminar un proyecto desaparece el nombre del mismo en el filtro en la pantalla Tests
    Given Existe el proyecto <nombreProyecto>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Projects
    And el cliente realiza la busqueda de un proyecto que contenga la clave <nombreProyecto>
    And El cliente realiza un click sobre el tacho de basura del proyecto <nombreProyecto>
    And click sobre el boton "Si, borrar|Yes, delete"
    When se dirige a la pantalla Tests
    Then se verifica que no se visualiza el proyecto <nombreProyecto> en el filtro de proyectos

    Examples:
      | nombreProyecto         |
      | Proyecto de Automation |

  @ListTestCases @TestCases @FilterTestCase @Regresion @EN @ES @ClearData
  Scenario Outline: Verificar que desaparece un tag del filtro al eliminar un TC que lo contiene
    Given Existe test <test> con el tag <tag>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And filtra los test por el proyecto Proyecto de Automation
    When El cliente realiza un click sobre el tacho de basura del test case cuyo titulo es <test>
    And click sobre el boton "Si, borrar|Yes, delete"
    Then se verifica que en el filtro de tags no aparece el tag <tag>

    Examples:
      | test               | tag                 |
      | Test de Automation | @AutomationTagUnico |

  @ListTestCases @TestCases @FilterTestCase @Regresion @ClearData
  Scenario Outline: Verificar funcionamiento del boton Borrar Seleccion en el filtro Automation Type
    Given Existe un test <test> con el Tipo de Automatizacion <tipoAutomatizacion>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And se cambia el idioma a <idioma>
    When filtro por el Automation type a buscar <tiposAutomatizacion>
    And hace click en el boton Borrar Seleccion de Tipo de Automatizacion
    Then se visualiza que ya no hay Tipos de Automatizacion seleccionados

    @ES
    Examples:
      | idioma | test               | tipoAutomatizacion    | tiposAutomatizacion                |
      | ES     | Test de Automation | Para ser Automatizado | Para ser Automatizado,Automatizado |

    @EN
    Examples:
      | idioma | test               | tipoAutomatizacion | tiposAutomatizacion       |
      | EN     | Test de Automation | To Be Automated    | To Be Automated,Automated |

  @ListTestCases @TestCases @FilterTestCase @Regresion @ClearData
  Scenario Outline: Filtrado multiple de Tests segun su Automation Type
    Given Existe un test <test1> con el Tipo de Automatizacion None
    Given Existe un test <test2> con el Tipo de Automatizacion To Be Automated
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And se cambia el idioma a <idioma>
    When filtro por el Automation type a buscar <tiposAutomatizacion>
    Then se visualiza el tipo <tiposAutomatizacion> en el filtro de Tipo de Automatizacion
    And verifico que el test <test1> se encuentra en la lista
    And verifico que el test <test2> se encuentra en la lista

    @ES
    Examples:
      | idioma | test1              | test2                | tiposAutomatizacion           |
      | ES     | Test de Automation | Test de Automation 2 | Ninguno,Para ser Automatizado |

    @EN
    Examples:
      | idioma | test1              | test2                | tiposAutomatizacion  |
      | EN     | Test de Automation | Test de Automation 2 | None,To Be Automated |

  @ListTestCases @TestCases @Regresion @ClearData
  Scenario Outline: Verificar que se visualiza en la grilla el cambio de Automation Type y Nombre al editar un Test Case desde la pantalla de Editar Test
    Given Existe un test <nombreTest> con el Tipo de Automatizacion <tipoAutomatizacion>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And se cambia el idioma a <idioma>
    When El cliente realiza un click sobre el lapiz del test case <nombreTest>
    And edita el campo title <nuevoNombre> TestCase
    And selecciona automated type desde Edit Test <nuevoTipo>
    And click sobre el boton Guardar TestCase
    And se dirige a la pantalla Tests
    Then verifico que se cambio el Tipo de Automatizacion <nuevoTipo> del test <nuevoNombre>

    @ES
    Examples:
      | idioma | nombreTest                | tipoAutomatizacion | nuevoTipo             | nuevoNombre        |
      | ES     | Test editar de Automation | Automated          | Ninguno               | Test de Automation |
      | ES     | Test editar de Automation | To Be Automated    | Automatizado          | Test de Automation |
      | ES     | Test editar de Automation | None               | Para Ser Automatizado | Test de Automation |

    @EN
    Examples:
      | idioma | nombreTest                | tipoAutomatizacion | nuevoTipo       | nuevoNombre        |
      | EN     | Test editar de Automation | Automated          | None            | Test de Automation |
      | EN     | Test editar de Automation | To Be Automated    | Automated       | Test de Automation |
      | EN     | Test editar de Automation | None               | To Be Automated | Test de Automation |

  @ListTestCases @TestCases  @Regresion @OrderTestCases
  Scenario Outline: El cliente ordena los tests por fecha de creacion
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And se cambia el idioma a <idioma>
    When El cliente realiza un click sobre la columna <columna>
    Then Obtiene los tests por fecha de creacion

    @ES
    Examples:
      | idioma | columna |
      | ES     | Creado  |

    @EN
    Examples:
      | idioma | columna |
      | EN     | Created |

  @ListTestCases @TestCases @SearchTestCases @Regresion @EN @ES @ClearData
  Scenario Outline: Búsqueda de Tests por tag en la barra de busqueda
    Given Existe test <test> con el tag <tag>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When ingresa el valor a buscar <tag>
    And verifico que el test <test> se encuentra en la lista
    And El cliente realiza un click sobre el lapiz del test case <test>
    Then se visualiza que el gherking del test contiene el tag <tag>

    Examples:
      | tag            | test               |
      | @AutomationTag | Test de Automation |

  @ListTestCases @TestCases @Regresion @ES @EN @ClearData
  Scenario Outline: Verificar que descartar la duplicacion de un test nos devuelve a la grilla
    Given Existe el test <nombreTest>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When El cliente realiza un click sobre el boton elipsis del test <nombreTest>
    And click sobre el boton Duplicar
    Then se visualiza en el nombre del test duplicado la palabra "Copy"
    And hace click en el boton "Descartar | Discard"
    Then se visualiza la grilla el TestCases <nombreTest>

    Examples:
      | nombreTest         |
      | Test de Automation |


  @ListTestCases @TestCases @FilterTestCase @EN @ES @Regresion @ClearData
  Scenario Outline: Verificar que la edicion del nombre de un proyecto se ve reflejada en el filtro de la pantalla Tests
    Given Existe el proyecto <nombreProyecto>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Projects
    And El cliente realiza un click sobre el lapiz del proyecto <nombreProyecto>
    And edita el campo Nombre <nuevoNombre> proyecto
    And click sobre el boton Guardar proyecto
    When se dirige a la pantalla Tests
    Then se verifica que aparece el nombre <nuevoNombre> en el filtro de proyecto

    Examples:
      | nombreProyecto                | nuevoNombre            |
      | Proyecto editar de Automation | Proyecto de Automation |

  @ListTestCases @TestCases @Regresion @OrderTestCases
  Scenario Outline: El cliente ordena los tests por columnas
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And se cambia el idioma a <idioma>
    When El cliente realiza un click sobre la columna <columna>
    Then Obtiene la columna <columna> ordenada alfabeticamente

    @ES
    Examples:
      | idioma | columna  |
      | ES     | Titulo   |
      | ES     | Proyecto |
      | ES     | Id       |

    @EN
    Examples:
      | idioma | columna |
      | EN     | Title   |
      | EN     | Project |
      | EN     | Id      |

  @ListTestCases @TestCases @FilterTestCase @EN @ES @Regresion @ClearData
  Scenario Outline: Verificar funcionamiento del boton Borrar seleccion en el filtro proyecto
    Given Existe el test <test>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    And filtra los test por el proyecto Proyecto de Automation
    And hace click en el boton Borrar selección del filtro de Proyectos
    Then se visualiza que ya no hay proyecto seleccionado

    Examples:
      | test               |
      | Test de Automation |

  @ListTestCases @TestCases @FilterTestCase @EN @ES @Regresion @ClearData
  Scenario Outline: Verificar funcionamiento del boton Borrar Seleccion en el filtro tags
    Given Existe test <test1> con el tag <tag1>
    And Existe test <test2> con el tag <tag2>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When filtro por el tag a buscar <tags>
    And hace click en el boton Borrar selección del filtro de Tags
    Then se visualiza que ya no hay tags seleccionados

    Examples:
      | test1              | tag1           | test2                | tag2            | tags                           |
      | Test de Automation | @AutomationTag | Test de Automation 2 | @AutomationTag2 | @AutomationTag,@AutomationTag2 |


  @ListTestCases @TestCases @FilterTestCase @Regresion @EN @ES @ClearData
  Scenario Outline: Verificar que solo se puede filtrar por un nombre de proyecto
    Given Existe el test <test>
    And Existe el proyecto <proyecto2>
    And El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirige a la pantalla Tests
    When filtra los test por el proyecto Proyecto de Automation
    And agrega segundo filtro para el proyecto <proyecto2>
    Then verifico que se visualiza en el filtro el proyecto <proyecto2>
    And Se elimina el proyecto <proyecto2>

    Examples:
      | test               | proyecto2                      |
      | Test de Automation | Segundo Proyecto de Automation |


