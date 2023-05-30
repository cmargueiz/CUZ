import obteniendoJson as oj
import os
import errno

nombreFacturas  = [
    "fe-ccf-v3",
    "fe-cd-v1",
    "fe-cl-v1",
    "fe-cr-v1",
    "fe-dcl-v1",
    "fe-fc-v1",
    "fe-fex-v1",
    "fe-fse-v1",
    "fe-nc-v3",
    "fe-nd-v3",
    "fe-nr-v3",
    "anulacion-schema-v2",
    "contingencia-schema-v3"
]

for nombreFactura in nombreFacturas:
    nombre_archivo = nombreFactura + ".json" 
    datos_json = oj.leer_archivo_json(nombre_archivo)

    try:
        os.mkdir(nombreFactura)
    except OSError as e:
        if e.errno != errno.EEXIST:
            raise

    if datos_json:
        print("Contenido del archivo JSON " + nombreFactura +":")

        estructuras = datos_json["properties"].keys()

        datosFacturaCreditoFiscal = {}

        for estructura in estructuras:
            nombre_archivo = nombreFactura + "/" + estructura + ".json"
            datos_json_estructura = {}
            if datos_json["properties"][estructura].get("properties") != None:
                datos_json_estructura = datos_json["properties"][estructura]["properties"]
            elif datos_json["properties"][estructura].get("items") != None:
                datos_json_estructura = datos_json["properties"][estructura]["items"]['properties']
            else:
                datos_json_estructura = datos_json["properties"][estructura]
            
            datos = oj.defaultSegunTipo(datos_json_estructura)
            oj.escribir_archivo_json(datos, nombre_archivo, estructura)

            datosFacturaCreditoFiscal[estructura] = datos

        nombre_archivo = nombreFactura + "/" + nombreFactura + " resumen.json"
        oj.escribir_archivo_json(datosFacturaCreditoFiscal, nombre_archivo)