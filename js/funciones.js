 <script >
        function Eliminar_Alumnos(id_to_delete) {

          var confirmation = confirm('¿Está seguro de que desea eliminar el estudiante con el número de control '+ id_to_delete);

          if(confirmation)
          {
            window.location = "Eliminar_Alumnos.php?No_control="+id_to_delete;
          }
        }

        function Eliminar_Actividad(id_activadad){

          var confirmation = confirm('¿Está seguro de que desea eliminar la actividad con clave '+ id_activadad);

          if (confirmation) {

            window.location = "Eliminar_Actividad.php?clave_act=" + id_activadad;
          }
        }

        function Eliminar_Carrera(id_carrera) {

          var confirmation = confirm('¿Está seguro de que desea eliminar la carrera con clave ' + id_carrera);

          if (confirmation) {

            window.location = "Eliminar_Carrera.php?clave_carrera=" + id_carrera;
          }
        }

      function Eliminar_Departamento(id_deper){

          var confirmation = confirm('¿Está seguro de que desea eliminar el departamento? ' + id_deper);

          if (confirmation) {

            window.location = "Eliminar_Departamento.php?rfc_departamento=" + id_deper;
          }
      }

      function Eliminar_Instituto(id_inst){

          var confirmation = confirm('¿Está seguro de que desea eliminar el instituto con clave ' + id_inst + ' ?');

          if (confirmation) {

            window.location = "Eliminar_Instituto.php?clave_instituto=" + id_inst;
          }
      }

      function Eliminar_Instructor(id_depe){

          var confirmation = confirm('¿Está seguro de que desea eliminar el instructor ' + id_depe);

          if (confirmation) {

            window.location = "Eliminar_Instructor.php?rfc_instructor=" + id_depe;
          }
      }



      function Eliminar_Trabajador(id_tr){

          var confirmation = confirm('¿Está seguro de que desea eliminar el trabajador ' + id_tr);

          if (confirmation) {

            window.location = "Eliminar_Trabajador.php?rfc_trabajador=" + id_tr;
          }
      }

       function Eliminar_Solicitud(id_solicitud){

          var confirmation = confirm('¿Está seguro de que desea eliminar la solicitud ' + id_solicitud);

          if (confirmation) {

            window.location = "Eliminar_Solicitud.php?folio=" + id_solicitud;
          }
      }


  </script>

  <script>

    function mostrar(id) {

       if (id == "Seleccion") {
        $("#es").show();
        $("#insertar").hide();
        $("#buscar").hide();
      }

      if (id == "insertar") {
        $("#insertar").show();
        $("#buscar").hide();
        $("#es").hide();
      }


      if (id == "buscar") {
       $("#insertar").hide();
        $("#buscar").show();
        $("#es").hide();
      }
    }
  </script>
