-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (ClienteID, PrimerNombre, PrimerApellido, email, cui, telefono)
VALUES (ClienteID_Seq.NEXTVAL, 'Juan', 'Pérez', 'juan@example.com', '123456789', '555-1234');

-- Insertar datos en la tabla Inventario
INSERT INTO Inventario (ProductoID, CodigoProducto, NombreProducto, Descripcion, Categoria, Precio)
VALUES (ProductoID_Seq.NEXTVAL, 'ABC123', 'Producto 1', 'Descripción del producto 1', 'Electrónica', 199.99);

-- Insertar datos en la tabla Vendedores
INSERT INTO Vendedores (VendedorID, Nombre, CodigoVendedor, Email, MetaDeVentas, AreaDeVentas, VentasDelDia)
VALUES (VendedorID_Seq.NEXTVAL, 'Ana García', 'VEND001', 'ana@example.com', 10000, 'Zona Norte', 0);

-- Insertar datos en la tabla Proveedores
INSERT INTO Proveedores (ProveedorID, NombreEmpresa, NombreContacto, Telefono, Email, CuentaBancaria, Descuentos)
VALUES (ProveedorID_Seq.NEXTVAL, 'Proveedor A', 'Contacto Proveedor A', '555-5678', 'proveedorA@example.com', '123-456-789', 0.1);

-- Insertar datos en la tabla Ventas
INSERT INTO Ventas (VentaID, ClienteID, VendedorID, ProductoID, Cantidad, FechaPago, EstadoPago, Descuentos)
VALUES (VentaID_Seq.NEXTVAL, 1, 1, 1, 2, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Pagado', 0.05);

-- Insertar datos en la tabla Compra
INSERT INTO Compra (CompraID, ProveedorID, NombreComercial, RazonSocial, FechaEntrega, TipoPago, ProductoID, CodigoProducto, Costo, Cantidad, NIT)
VALUES (CompraID_Seq.NEXTVAL, 1, 'Compras Express', 'Razón Social Compras Express', TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'Crédito', 2, 'XYZ789', 150.0, 5, '789-012345');

-- Insertar datos en la tabla Cotizacion
INSERT INTO Cotizacion (CotizacionID, NombreProducto, CantidadSolicitada, PrecioPorUnidad, PrecioTotal, ClienteID, TipoPago, Fecha, ProductoID, NIT)
VALUES (CotizacionID_Seq.NEXTVAL, 'Producto 1', 10, 19.99, 199.90, 1, 'Efectivo', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 1, '123-456789-012-3');

-- Insertar datos en la tabla PuntosDeVenta
INSERT INTO PuntosDeVenta (PuntoID, DireccionPunto, NombrePunto, VendedorID, NumeroFactura)
VALUES (PuntoID_Seq.NEXTVAL, 'Calle Principal 123', 'Tienda Principal', 1, 'FAC123');

-- Insertar datos en la tabla Sucursal
INSERT INTO Sucursal (SucursalID, Direccion, Nombre, VendedorID, NumeroFactura)
VALUES (SucursalID_Seq.NEXTVAL, 'Avenida Central 456', 'Sucursal A', 1, 'FAC456');

-- Insertar datos en la tabla Empresa
INSERT INTO Empresa (EmpresaID, NombreComercial, RazonSocial, Direccion, NumeroNIT, RepresentanteLegal)
VALUES (EmpresaID_Seq.NEXTVAL, 'Mi Empresa', 'Razón Social de Mi Empresa', 'Calle Empresarial 789', '789-012345-678-9', 'Representante Legal');

-- Insertar datos en la tabla Usuarios
INSERT INTO Usuarios (UsuarioID, NombreUsuario, Contrasena, NombreCompleto, CorreoElectronico, NumeroTelefono, FechaNacimiento, Rol, EstadoCuenta, FechaRegistro, PreferenciasPrivacidad, RegistroAcciones)
VALUES (UsuarioID_Seq.NEXTVAL, 'usuario1', 'contrasena123', 'Usuario Uno', 'usuario1@example.com', '555-7890', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Empleado', 'Activo', SYSDATE, 'Privacidad Total', 'Acciones Registradas');

-- Insertar datos en la tabla Roles
INSERT INTO Roles (RolID, NombreRol, Descripcion, Permisos, FechaCreacion, UltimaActualizacion, CreadoPor, EstadoRol, RestriccionesAdicionales)
VALUES (RolID_Seq.NEXTVAL, 'Admin', 'Rol de Administrador', 'Todos los permisos', SYSDATE, SYSDATE, 'admin', 'Activo', 'Restricciones Ninguna');

-- Insertar datos en la tabla Colaborador
INSERT INTO Colaborador (ColaboradorID, NombreCompleto, FechaNacimiento, Genero, CorreoElectronico, NumeroTelefono, Direccion, RolPosicion, DepartamentoEquipo, FechaInicio, FechaFinalizacion, EstadoColaborador, HabilidadesCompetencias, ExperienciaLaboral, CertificacionesLogros, Referencias, Fotografia)
VALUES (ColaboradorID_Seq.NEXTVAL, 'Colaborador Uno', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 'Masculino', 'colaborador1@example.com', '555-1234', 'Calle Colaborador 123', 'Desarrollador', 'Equipo de Desarrollo', TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL, 'Activo', 'Programación en Java, Python', 'Más de 5 años en desarrollo de software', 'Certificado en Java, Certificación PMP', 'Referencias laborales disponibles a petición', NULL);

-- Insertar datos en la tabla Acceso
INSERT INTO Acceso (AccesoID, UsuarioID, FechaHoraAcceso, DireccionIP, Navegador, AccionRealizada, ResultadoAcceso, CodigoError, DuracionAcceso, RutaAcceso)
VALUES (AccesoID_Seq.NEXTVAL, 1, TO_TIMESTAMP('2023-01-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), '192.168.1.1', 'Chrome', 'Inicio de sesión', 'Éxito', NULL, 10, '/inicio');

-- Insertar datos en la tabla Cuadre
INSERT INTO Cuadre (CuadreID, FechaHoraCuadre, Responsable, TotalVentas, TotalIngresos, TotalEgresos, EfectivoInicial, EfectivoFinal, Diferencia, Comentarios, EstadoCuadre, CodigoCierre)
VALUES (CuadreID_Seq.NEXTVAL, TO_TIMESTAMP('2023-01-15 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Supervisor', 500, 550, 30, 200, 220, -10, 'Cuadre del día', 'Cerrado', 'CC001');
