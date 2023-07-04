class Report {
    int id;
    String conNomEtapa;
    String conNomMarca;
    int conEmpresa;
    String conNomEmpresa;
    String conCodAlmacen;
    String conNomAlmacen;
    String conNomCiudad;
    int? conUsuario;
    String conNomAsesor;
    String conNomCanal;
    String conNomMedio;
    String conNomCalidad;
    String conNomCampana;
    String conNomTipocontacto;
    int conPeriodo;
    int conMes;
    int conDia;
    int conEstContactado;
    int conEstDesistido;
    String conCodLeadgenId;
    int conCantidad;
    int conPAgeDh;
    int conPAgeFh;
    double conInversion;
    double conCosto;
    String conNomCatVehiculo;
    dynamic fecdesdeCampania;
    dynamic fechastaCampania;
    String conSegmentacion;
    String conSubsegmentacion;
    DateTime conFecha;
    String conPlataforma;
    String? conRazonDesistido;
    String conNomEstadoContactado;
    String conCliente;
    String conCliCedula;
    String conCliDireccion;
    String conCliMail;
    String conCliTelefono;
    dynamic conCiudadCliente;
    dynamic conDireccionContacto;
    String? conMailContacto;
    String? conTelefonoCelularContacto;
    String? conNombresContacto;
    dynamic modeloVersionInteres;
    String? conNomPermisoUsuario;
    dynamic conPeriodoMesCierre;
    dynamic conMesCierre;
    dynamic conPeriodoCierre;
    dynamic conNomMesCierre;
    int? conPeriodoReporteCierre;
    int? conMesReporteCierre;
    int conCantidadSugerida;
    int conEstadoCierre;
    String conNombreEstadoCierre;
    String conVisitaShowroom;
    String conNomPlatfIng;
    String calificado;
    String conEstadoRegTestDrive;

    Report({
        required this.id,
        required this.conNomEtapa,
        required this.conNomMarca,
        required this.conEmpresa,
        required this.conNomEmpresa,
        required this.conCodAlmacen,
        required this.conNomAlmacen,
        required this.conNomCiudad,
        this.conUsuario,
        required this.conNomAsesor,
        required this.conNomCanal,
        required this.conNomMedio,
        required this.conNomCalidad,
        required this.conNomCampana,
        required this.conNomTipocontacto,
        required this.conPeriodo,
        required this.conMes,
        required this.conDia,
        required this.conEstContactado,
        required this.conEstDesistido,
        required this.conCodLeadgenId,
        required this.conCantidad,
        required this.conPAgeDh,
        required this.conPAgeFh,
        required this.conInversion,
        required this.conCosto,
        required this.conNomCatVehiculo,
        this.fecdesdeCampania,
        this.fechastaCampania,
        required this.conSegmentacion,
        required this.conSubsegmentacion,
        required this.conFecha,
        required this.conPlataforma,
        this.conRazonDesistido,
        required this.conNomEstadoContactado,
        required this.conCliente,
        required this.conCliCedula,
        required this.conCliDireccion,
        required this.conCliMail,
        required this.conCliTelefono,
        this.conCiudadCliente,
        this.conDireccionContacto,
        this.conMailContacto,
        this.conTelefonoCelularContacto,
        this.conNombresContacto,
        this.modeloVersionInteres,
        this.conNomPermisoUsuario,
        this.conPeriodoMesCierre,
        this.conMesCierre,
        this.conPeriodoCierre,
        this.conNomMesCierre,
        this.conPeriodoReporteCierre,
        this.conMesReporteCierre,
        required this.conCantidadSugerida,
        required this.conEstadoCierre,
        required this.conNombreEstadoCierre,
        required this.conVisitaShowroom,
        required this.conNomPlatfIng,
        required this.calificado,
        required this.conEstadoRegTestDrive,
    });

    factory Report.fromJson(Map<String, dynamic> json) => Report(
        id: json["id"],
        conNomEtapa: json["conNomEtapa"],
        conNomMarca: json["conNomMarca"],
        conEmpresa: json["conEmpresa"],
        conNomEmpresa: json["conNomEmpresa"],
        conCodAlmacen: json["conCodAlmacen"],
        conNomAlmacen: json["conNomAlmacen"],
        conNomCiudad: json["conNomCiudad"],
        conUsuario: json["conUsuario"],
        conNomAsesor: json["conNomAsesor"],
        conNomCanal: json["conNomCanal"],
        conNomMedio: json["conNomMedio"],
        conNomCalidad: json["conNomCalidad"],
        conNomCampana: json["conNomCampana"],
        conNomTipocontacto: json["conNomTipocontacto"],
        conPeriodo: json["conPeriodo"],
        conMes: json["conMes"],
        conDia: json["conDia"],
        conEstContactado: json["conEstContactado"],
        conEstDesistido: json["conEstDesistido"],
        conCodLeadgenId: json["conCodLeadgenId"],
        conCantidad: json["conCantidad"],
        conPAgeDh: json["conPAgeDh"],
        conPAgeFh: json["conPAgeFh"],
        conInversion: json["conInversion"],
        conCosto: json["conCosto"],
        conNomCatVehiculo: json["conNomCatVehiculo"],
        fecdesdeCampania: json["fecdesdeCampania"],
        fechastaCampania: json["fechastaCampania"],
        conSegmentacion: json["conSegmentacion"],
        conSubsegmentacion: json["conSubsegmentacion"],
        conFecha: DateTime.parse(json["conFecha"]),
        conPlataforma: json["conPlataforma"],
        conRazonDesistido: json["conRazonDesistido"],
        conNomEstadoContactado: json["conNomEstadoContactado"],
        conCliente: json["conCliente"],
        conCliCedula: json["conCliCedula"],
        conCliDireccion: json["conCliDireccion"],
        conCliMail: json["conCliMail"],
        conCliTelefono: json["conCliTelefono"],
        conCiudadCliente: json["conCiudadCliente"],
        conDireccionContacto: json["conDireccionContacto"],
        conMailContacto: json["conMailContacto"],
        conTelefonoCelularContacto: json["conTelefonoCelularContacto"],
        conNombresContacto: json["conNombresContacto"],
        modeloVersionInteres: json["modeloVersionInteres"],
        conNomPermisoUsuario: json["conNomPermisoUsuario"],
        conPeriodoMesCierre: json["conPeriodoMesCierre"],
        conMesCierre: json["conMesCierre"],
        conPeriodoCierre: json["conPeriodoCierre"],
        conNomMesCierre: json["conNomMesCierre"],
        conPeriodoReporteCierre: json["conPeriodoReporteCierre"],
        conMesReporteCierre: json["conMesReporteCierre"],
        conCantidadSugerida: json["conCantidadSugerida"],
        conEstadoCierre: json["conEstadoCierre"],
        conNombreEstadoCierre: json["conNombreEstadoCierre"],
        conVisitaShowroom: json["conVisitaShowroom"],
        conNomPlatfIng: json["conNomPlatfIng"],
        calificado: json["calificado"],
        conEstadoRegTestDrive: json["conEstadoRegTestDrive"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "conNomEtapa": conNomEtapa,
        "conNomMarca": conNomMarca,
        "conEmpresa": conEmpresa,
        "conNomEmpresa": conNomEmpresa,
        "conCodAlmacen": conCodAlmacen,
        "conNomAlmacen": conNomAlmacen,
        "conNomCiudad": conNomCiudad,
        "conUsuario": conUsuario,
        "conNomAsesor": conNomAsesor,
        "conNomCanal": conNomCanal,
        "conNomMedio": conNomMedio,
        "conNomCalidad": conNomCalidad,
        "conNomCampana": conNomCampana,
        "conNomTipocontacto": conNomTipocontacto,
        "conPeriodo": conPeriodo,
        "conMes": conMes,
        "conDia": conDia,
        "conEstContactado": conEstContactado,
        "conEstDesistido": conEstDesistido,
        "conCodLeadgenId": conCodLeadgenId,
        "conCantidad": conCantidad,
        "conPAgeDh": conPAgeDh,
        "conPAgeFh": conPAgeFh,
        "conInversion": conInversion,
        "conCosto": conCosto,
        "conNomCatVehiculo": conNomCatVehiculo,
        "fecdesdeCampania": fecdesdeCampania,
        "fechastaCampania": fechastaCampania,
        "conSegmentacion": conSegmentacion,
        "conSubsegmentacion": conSubsegmentacion,
        "conFecha": conFecha.toIso8601String(),
        "conPlataforma": conPlataforma,
        "conRazonDesistido": conRazonDesistido,
        "conNomEstadoContactado": conNomEstadoContactado,
        "conCliente": conCliente,
        "conCliCedula": conCliCedula,
        "conCliDireccion": conCliDireccion,
        "conCliMail": conCliMail,
        "conCliTelefono": conCliTelefono,
        "conCiudadCliente": conCiudadCliente,
        "conDireccionContacto": conDireccionContacto,
        "conMailContacto": conMailContacto,
        "conTelefonoCelularContacto": conTelefonoCelularContacto,
        "conNombresContacto": conNombresContacto,
        "modeloVersionInteres": modeloVersionInteres,
        "conNomPermisoUsuario": conNomPermisoUsuario,
        "conPeriodoMesCierre": conPeriodoMesCierre,
        "conMesCierre": conMesCierre,
        "conPeriodoCierre": conPeriodoCierre,
        "conNomMesCierre": conNomMesCierre,
        "conPeriodoReporteCierre": conPeriodoReporteCierre,
        "conMesReporteCierre": conMesReporteCierre,
        "conCantidadSugerida": conCantidadSugerida,
        "conEstadoCierre": conEstadoCierre,
        "conNombreEstadoCierre": conNombreEstadoCierre,
        "conVisitaShowroom": conVisitaShowroom,
        "conNomPlatfIng": conNomPlatfIng,
        "calificado": calificado,
        "conEstadoRegTestDrive": conEstadoRegTestDrive,
    };
}

