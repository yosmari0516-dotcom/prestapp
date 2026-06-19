# PrestApp: Ecosistema SaaS de Gestión Financiera

Plataforma integral para empresas prestamistas, cobradores y clientes.

## Arquitectura de Roles
- **Admin/Empresa (Estilo Oficina):** Gestión corporativa, reportes financieros, licencias y configuración de empresa.
- **Cobrador (Estilo Despacho):** Gestión operativa, navegación GPS, semáforo de rutas y validación de pagos.
- **Cliente (Estilo Gestión):** Transparencia financiera, historial, botón de pago declarado y estado de cuenta.

## Estructura del Repositorio
- `/database`: Esquemas SQL para la base de datos centralizada en `nosotrosrd.cfd`.
- `/backend`: API REST para la lógica de negocio y sincronización en la nube.
- `/app-mobile`: Proyecto único en Android (Kotlin) con navegación basada en roles.
- `/admin-web`: Interfaz de escritorio para empresas (React/Vue).
- `/docs`: Documentación técnica y flujos de trabajo.
 