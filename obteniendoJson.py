import json

def leer_archivo_json(nombre_archivo):
    try:
        with open(nombre_archivo) as archivo:
            datos = json.load(archivo)
            return datos
    except FileNotFoundError:
        print("El archivo no existe.")
    except json.JSONDecodeError:
        print("El archivo no es válido JSON.")

def getSimpleType(typeValue, properties = None, key = None):
    if typeValue == "string":
        return ""
    elif typeValue == "number":
        return 0
    elif typeValue == "boolean":
        return False
    elif typeValue == "object":
        return defaultSegunTipo(properties["items"]["properties"])
    elif typeValue == "integer":
        return 0
    else:
        return None

def defaultSegunTipo(properties):

    keys = properties.keys()
    for key in keys:

        if type(properties[key]) == dict:
            typeValue = properties[key]["type"]
            if type(typeValue) == list:
                typeValue = typeValue[0]
            if typeValue == "string":
                properties[key] = ""
            elif typeValue == "number":
                properties[key] = 0
            elif typeValue == "boolean":
                properties[key] = False
            elif typeValue == "object":
                properties[key] = defaultSegunTipo(properties[key]["properties"])
            elif typeValue == "integer":
                properties[key] = 0
            elif typeValue == "array":
                typeArray = properties[key]["items"]["type"]
                properties[key] = [getSimpleType(typeArray, properties[key], key)]
            else:
                properties[key] = None

    if properties.get('additionalProperties') != None  or properties.get('required') != None:
        properties.pop('additionalProperties')
        properties.pop('required')

    return properties


def escribir_archivo_json(datos, nombre_archivo, estructura = None):

    imprimir = {}
    if estructura != None:
        imprimir[estructura] = datos
    else:
        imprimir = datos
    try:
        with open(nombre_archivo, 'w') as archivo:
            json.dump(imprimir, archivo, indent=4)
        print("Archivo JSON creado exitosamente "+ nombre_archivo +".")
    except:
        print("Error al escribir el archivo JSON.")


