Feature: Gestion de cuentas K-9 mail

  Scenario: Agregar cuenta
	Given I press "Next"
	Then I enter text "misotest2017@hotmail.com" into field with id "account_email"
	Then I enter text "pruebas2017*" into field with id "account_password"
	Given I press "Next"
	Then I enter text "misotest2017" into field with id "account_description"
	Then I enter text "misotest2017" into field with id "account_name"
	Given I press "Done"
	Given I press "OK"
	Given I press "misotest2017"
	Then I should see "Inbox"

	
  Scenario: escribir correo
	Then I press view with id "compose"
	Then I enter text "misotest2017@hotmail.com" into field with id "to"
	Then I enter text "Prueba" into field with id "subject"
	Then I enter text "Mensaje de prueba :)" into field with id "message_content"
	Then I press view with id "send"
	Then I wait for 60 seconds
	
  Scenario: lectura y borrado de correo
    Then I wait for 10 seconds
	Then I scroll down
	Then I should see "1"
	Then I should see "Prueba"
	Given I press "Prueba"
	Then I press view with id "delete"
	Then I press view with id "home"
	
  Scenario: escribir correo de longitud 2'000.000
	Then I press view with id "compose"
	Then I enter text "misotest2017@hotmail.com" into field with id "to"
	Then I enter text "Prueba" into field with id "subject"
	Then I enter text "CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A.
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.1CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamente autorizado para el 
efecto (“El Oferente”), actuando en su propio nombre y representación así como en nombre 
y representación del Banco Seleccionado (como éste término se define más adelante) para 
los efectos previstos en la cláusula cuarta del presente documento, exclusivamente; y 
(ii) La sociedad comercial que se indica en la página de firmas del presente contrato, 
siendo una sociedad debidamente constituida y existente de conformidad con las leyes de la 
República de Colombia, representada en este contrato por quien firma el presente contrato, 
en la calidad indicada en la página de firmas del mismo, de conformidad con los 
documentos que se adjuntan como Anexo 1 (el “Proveedor” y, conjuntamente con El 
Oferente y el Banco Seleccionado, según sea el caso, las “Partes”) 
hemos convenido celebrar el presente contrato marco (el “Contrato”) el cual se regirá por 
las siguientes cláusulas. 
CLÁUSULA PRIMERA 
INTERPRETACIÓN Y DEFINICIONES 
1.1 Interpretación. Para los fines del presente Contrato, a menos que expresamente se 
estipule de otra manera, los términos en mayúsculas que en el mismo se usan tendrán el 
significado asignado en el cuerpo del presente Contrato o en la Sección 1.2 siguiente. Los 
títulos de las Secciones se incluyen con fines de referencia y de conveniencia pero de 
ninguna manera limitan, definen o describen el alcance y la intención del presente Contrato 
y no se consideran como parte del mismo. Las palabras técnicas o científicas que no se 
encuentren definidas expresamente en el presente Contrato tendrán los significados que les 
correspondan según la técnica o ciencia respectiva, y las demás palabras se entenderán en 
su sentido natural y obvio, según el uso general de las mismas.CENCOSUD COLOMBIA S.A. 
Contrato Marco - Proveedores 1 
ESTE ES UN CONTRATO PROFORMA DE CENCOSUD COLOMBIA S.A. QUE 
CONTIENE SERVICIOS OFRECIDOS POR ÉSTA ÚLTIMA A SUS 
PROVEEDORES. SE SOLICITA A LOS PROVEEDORES QUE DESEEN 
ACCEDER A LOS SERVICIOS AQUÍ DESCRITOS LEER Y ENTENDER LOS 
TÉRMINOS DEL PRESENTE CONTRATO Y, SI SE ENCUENTRAN DE 
ACUERDO CON LOS MISMOS Y DESEAN ACCEDER A LOS SERVICIOS AQUÍ 
INCLUIDOS, FIRMAR EN SEÑAL DE ACEPTACIÓN Y ENVIAR EL ORIGINAL 
FIRMADO DE ESTE CONTRATO A CENCOSUD COLOMBIA S.A. 
CONTRATO MARCO 
Entre los suscritos: 
(i) CENCOSUD COLOMBIA S.A., una sociedad debidamente constituida y existente 
bajo las leyes de la República de Colombia, representada en este contrato por quien firma el 
presente contrato, en su calidad de representante legal, debidamen" into field with id "message_content"
	Then I press view with id "send"
	Then I wait for 60 seconds
	
  Scenario: lectura y borrado de correo
    Then I wait for 10 seconds
	Then I scroll down
	Then I should see "1"
	Then I should see "Prueba"

  Scenario: Eliminar cuenta
	Then I press view with id "home"
	Then I press view with id "home"
	Then I long press "misotest2017"
	Given I press "Remove account"
	Given I press "OK"
	Then I should see "Accounts"
