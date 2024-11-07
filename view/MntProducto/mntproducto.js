var tabla;

function init(){
$('#producto_form').on("submit",function(e){
    guardaryeditar(e);
});
}

$(document).ready(function(){
tabla=$('#productos_data').dataTable({
    "aProcessing":true,
    "aServerSide":true,
    dom:'Bfrtip',
    buttons:[
        'copyHtml5',
        'excelHtml5',
        'csvHtml5', 
        'pdf'
        ],
        "ajax":{
            url: "../../controller/producto.php?op=listar",
            type : "get",
            dataType : "json",
            error: function(e){
                console.log(e.responseText);
            }
        },
    "bDestroy":true,
    "responsive": true,
    "bInfo":true,
    "iDisplayLength":20,
    "order":[[0,"asc"]],
    "language": {
        "decimal": ",",
            "sProcessing": "Procesando...",
            "sLengthMenu": "Mostrar _MENU_ registros",
            "sZeroRecords": "No se encontraron resultados",
            "sEmptyTable": "Ningún dato disponible en esta tabla",
            "sInfo": "Mostrando un total de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando un total de 0 registros",
            "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix": "",
            "sSearch": "Buscar:",
            "sUrl": "",
            "sInfoThousands": ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
            "sFirst": "Primero",
            "sLast": "Último",
            "sNext": "Siguiente",
            "sPrevious": "Anterior"
            },
            "oAria": {
            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
            }
        }).DataTable();
});


function guardaryeditar(e){
    e.preventDefault();
    var formData = new FormData($('#producto_form')[0]);

    $.ajax({
        url:"../../controller/producto.php?op=guardaryeditar",
        type:"POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function(datos){
            //console.log(datos);
            $('#producto_form')[0].reset();
            $('#modalmantenimiento').modal('hide');
            $('#productos_data').DataTable().ajax.reload();

            Swal.fire({
                title: "Registro!",
                text: "El registro se guardó correctamente.",
                icon: "success"
            });
        }
    });
}


function editar(prod_id){
    $('#mdlTitulo').html('Editar Registro');

    $.post("../../controller/producto.php?op=mostrar",{prod_id:prod_id},function(data){
        data = JSON.parse(data);
        $('#prod_id').val(data.prod_id);
        $('#prod_nom').val(data.prod_nom);
        $('#prod_desc').val(data.prod_desc);
        //console.log(data);
    });

    $('#modalmantenimiento').modal('show');

    // console.log(prod_id);
}

function eliminar (prod_id){

    Swal.fire({
        title: "CRUD",
        text: "Desea Eliminar el registro",
        icon: "error",
        showCancelButton: true,
        // confirmButtonColor: "#3085d6",
        // cancelButtonColor: "#d33",
        confirmButtonText: "Si",
        cancelButtonText: "No",
        reverseButtons:true
      }).then((result) => {
        if (result.isConfirmed) {
            $.post("../../controller/producto.php?op=eliminar",{prod_id:prod_id},function(data){

            });
            $('#productos_data').DataTable().ajax.reload();
            //console.log(prod_id);
            Swal.fire({
            title: "Eliminado!",
            text: "El registro se eliminó correctamente.",
            icon: "success"
          });
        }
      });
    
    
            
    
}

$(document).on("click","#btnNuevo",function(){
    $('#mdlTitulo').html('Nuevo Registro');
    $('#producto_form')[0].reset();
    $('#prod_id').val('');
    $('#modalmantenimiento').modal('show');
});

init();