package mx.instrumentacion



import grails.artefact.Artefact
import grails.converters.JSON
import grails.rest.RestfulController

import java.lang.reflect.ParameterizedType


class VelocidadController extends RestfulController<Velocidad>{

    static responseFormats = ['json']
    static allowedMethods = [index: "GET"]    
    def index() {
        def lista = Velocidad.list()
        render text: lista as JSON
    }
    def actual() 
    {
    	def primero = Velocidad.list([max:1 ,sort:"id", order:"desc"])
    	render text:primero as JSON
    }
}
