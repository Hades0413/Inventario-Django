const loaderOut = document.querySelector("#loader-out");
function fadeOut(element) {
  let opacity = 1;
  const timer = setInterval(function () {
    if (opacity <= 0.1) {
      clearInterval(timer);
      element.style.display = "none";
    }
    element.style.opacity = opacity;
    opacity -= opacity * 0.1;
  }, 50);
}
fadeOut(loaderOut);

function eliminarEmpleado(id_empleado, foto_empleado) {
  Swal.fire({
      title: '¿Estás seguro?',
      text: "¡No podrás recuperar este empleado después de eliminarlo!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Sí, eliminar',
      cancelButtonText: 'Cancelar'
  }).then((result) => {
      if (result.isConfirmed) {
          let url = `/borrar-empleado/${id_empleado}/${foto_empleado}`;
          if (url) {
              window.location.href = url;
          }
      }
  });
}

