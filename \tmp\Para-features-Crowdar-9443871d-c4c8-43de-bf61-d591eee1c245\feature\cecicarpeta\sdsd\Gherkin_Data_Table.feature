Feature: Gherkin scenarios
  
  @datatable
  Scenario Outline: User posts a comment on an article
  Given the user is logged in and viewing an article
  When they write the following comment in the comment section
    | Great article! Thanks for sharing. |
    | This is really insightful.          |
  And they click the "Post Comment" button
  Then their comment should be visible under the article
  And other users should be able to see the comment
  
  @datatable
   Scenario: Adding a single product to the shopping cart
    Given the customer is on the product page
    When they select a product "Phone" with the following details:
      | Name    | Quantity | Price |
      | iPhone  | 1        | $999  |
    And they click the "Add to Cart" button
    Then the product "iPhone" should be added to the shopping cart with a total price of $999
    
    @datatable
    Scenario: Calculating expenses for a trip
    Given the following expenses have been incurred during the trip:
      | Expense         | Amount |
      | Accommodation   | $300   |
      | Dining          | $150   |
      | Activities      | $200   |
    When the group organizer calculates the expenses
    Then the total expenses should be $650
    And if there are 4 participants
    Then each participant should owe $162.5
    
    @datatable
     Scenario: Registering for a conference with different ticket types
    Given the participant is on the conference registration page
    When they select the following ticket types:
      | Ticket Type     | Quantity |
      | Regular Pass    | 2        |
      | Workshop Pass   | 1        |
    And they provide their personal information
    And they confirm the registration
    Then their total cost should be calculated correctly
    
    @datatable
    Scenario: Adding multiple tasks to the to-do list
    Given the user has an empty to-do list
    When they add the following tasks:
      | Task          | Priority |
      | Buy groceries | High     |
      | Pay bills     | Medium   |
      | Walk the dog  | Low      |
    Then the to-do list should contain all the tasks in the specified order
    
    @datatable @examples
    Scenario: Booking seats for a group <movie>
    Given the movie <movie> is currently playing
    And there are the following available seats in the theater:
      | Row | Seat | Status   |
      | A   | 1    | Available|
      | A   | 2    | Available|
      | B   | 1    | Occupied |
    When the user selects the following seats:
      | Row | Seat |
      | A   | 1    |
      | A   | 2    |
    Then the selected seats should be marked as "Booked"
    
    Examples:
      |movie |
      | Titanic |
      | Indiana Jones|
      | SuperBloom |
    
    @datatable @examples
    Scenario Outline: Creating a new playlist <name>
    Given the user has no playlists
    When they create a playlist named <name> and add the following songs:
      | Song            | Artist       |
      | On the Road     | John Doe     |
      | Highway Blues   | Jane Smith   |
      | Open Sky        | Music Band   |
    Then the playlist <name> should contain the specified songs
    
    Examples:
      |name|
      | Road Trip Jams |
      | The last Trip |
      | New Trip      |
  
  Scenario Outline: Cucumber Data Table
    Given Table with example
      | FirstName  | <FirstName>  |
      | MiddleName | <MiddleName> |
      | LastName   | <LastName>   |
Examples: 
      | FirstName | MiddleName | LastName |
      | Priyank   | B          | Shah     |
      | Mansi     | P          | Shah     |
      
      
       @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


 @Runs @Regression @Smoke @EjecucionRun @EliminarCreacionesWeb @Nuevo
  Scenario Outline: Ejecutar una Run (<idioma>)
    Given Existe una run <nombreRun> creado por <usuario> y <contraseña> con estado UNEXECUTED para el proyecto <nombreProyecto> con el gestor <gestor>
    And  el cliente está logueado con el usuario automation.ltm y contraseña 1234
    And el cliente se encuentra en el run <nombreRun> del proyecto <nombreProyecto>
    And el idioma del sistema está en <idioma>
    When hace click en el botón Iniciar
    Then cambia el estado de la Run <nombreRun> a <estadoNuevo>
    And and se visualizan los botones Pausar y Terminar

    @ES
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Gitlab    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Github    |
      | automation.ltm | 1234       | ES     | Proyecto de Automation | Run de Automation | EN PROGRESO | Bitbucket |


    @EN
    Examples:
      | usuario        | contraseña | idioma | nombreProyecto         | nombreRun         | estadoNuevo | gestor    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Gitlab    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Github    |
      | automation.ltm | 1234       | EN     | Proyecto de Automation | Run de Automation | IN PROGRESS | Bitbucket |


