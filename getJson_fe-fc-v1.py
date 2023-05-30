import obteniendoJson as oj

nombreFactura = "fe-fc-v1"
nombre_archivo = nombreFactura + ".json" 
datos_json = oj.leer_archivo_json(nombre_archivo)


if datos_json:
    print("Contenido del archivo JSON " + nombreFactura +":")

    estructura = "identificacion"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"
    datosIdentificacion = datos_json["properties"][estructura]["properties"]
    datosIdentificacion = oj.defaultSegunTipo(datosIdentificacion)
    oj.escribir_archivo_json(datosIdentificacion, nombre_archivo, estructura)

    
    estructura = "documentoRelacionado"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"
    datosDocumentoRelacionado = datos_json["properties"][estructura]["items"]['properties']
    datosDocumentoRelacionado = oj.defaultSegunTipo(
        datosDocumentoRelacionado)
    oj.escribir_archivo_json(datosDocumentoRelacionado,nombre_archivo, estructura)

    estructura = "emisor"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"  
    datosEmisor = datos_json["properties"][estructura]
    datosEmisor = oj.defaultSegunTipo(datosEmisor)
    oj.escribir_archivo_json(datosEmisor, nombre_archivo, estructura)


    estructura = "receptor"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"
    datosReceptor = datos_json["properties"][estructura]['properties']
    datosReceptor = oj.defaultSegunTipo(datosReceptor)
    oj.escribir_archivo_json(datosReceptor, nombre_archivo, estructura)

    estructura = "otrosDocumentos"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"
    datosOtrosDcumentos = datos_json["properties"][estructura]["items"]['properties']
    datosOtrosDcumentos = oj.defaultSegunTipo(datosOtrosDcumentos)
    oj.escribir_archivo_json(datosOtrosDcumentos, nombre_archivo, estructura)

    estructura = "ventaTercero"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"
    datosVentaTercero = datos_json["properties"][estructura]['properties']
    datosVentaTercero = oj.defaultSegunTipo(datosVentaTercero)
    oj.escribir_archivo_json(datosVentaTercero, nombre_archivo, estructura)

    estructura = "cuerpoDocumento"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"
    datosCuerpoDocumento = datos_json["properties"][estructura]["items"]['properties']
    datosCuerpoDocumento = oj.defaultSegunTipo(datosCuerpoDocumento)
    oj.escribir_archivo_json(datosCuerpoDocumento, nombre_archivo, estructura)

    estructura = "resumen"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"
    datosResumen =  datos_json["properties"][estructura]['properties']
    datosResumen = oj.defaultSegunTipo(datosResumen)
    oj.escribir_archivo_json(datosResumen, nombre_archivo, estructura)

    estructura = "extension"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"
    datosExtension =  datos_json["properties"][estructura]['properties']
    datosExtension = oj.defaultSegunTipo(datosExtension)
    oj.escribir_archivo_json(datosExtension, nombre_archivo, estructura)

    estructura = "apendice"
    nombre_archivo = nombreFactura + "/" + estructura + ".json"
    datosApendice =  datos_json["properties"][estructura]["items"]['properties']
    datosApendice = oj.defaultSegunTipo(datosApendice)
    oj.escribir_archivo_json(datosApendice, nombre_archivo, estructura)


    factura = {}

    factura["identificacion"] = datosIdentificacion
    factura["documentoRelacionado"] = datosDocumentoRelacionado
    factura["emisor"] = datosEmisor
    factura["receptor"] = datosReceptor
    factura["otrosDocumentos"] = datosOtrosDcumentos
    factura["ventaTercero"] = datosVentaTercero
    factura["cuerpoDocumento"] = datosCuerpoDocumento
    factura["resumen"] = datosResumen
    factura["extension"] = datosExtension
    factura["apendice"] = datosApendice

    nombre_archivo = nombreFactura + "/" + nombreFactura + " resumen.json"

    oj.escribir_archivo_json(factura, nombre_archivo)