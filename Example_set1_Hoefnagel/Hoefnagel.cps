<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.38 (Build 268) (http://www.copasi.org) at 2023-07-18T21:44:47Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="38" versionDevel="268" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for R1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        2*V_1*(halfglucose/(2*Kglc_1))*(NAD*compartment/Knad_1)*(ADP*compartment/Kadp_1)/((1+halfglucose*compartment/(2*Kglc_1)+pyruvate*compartment/Kpyr_1)*(1+NAD*compartment/Knad_1+NADH*compartment/Knadh_1)*(1+ADP*compartment/Kadp_1+ATP*compartment/Katp_1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_276" name="Kadp_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="Katp_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="Kglc_1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="Knad_1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="Knadh_1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="Kpyr_1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="NAD" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="NADH" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_284" name="V_1" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="compartment" order="11" role="volume"/>
        <ParameterDescription key="FunctionParameter_286" name="halfglucose" order="12" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="pyruvate" order="13" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for R2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_2*((pyruvate*compartment*(NADH*compartment)-lactate*compartment*(NAD*compartment)/Keq_2)/(Kpyr_2*Knadh_2))/((1+pyruvate*compartment/Kpyr_2+lactate*compartment/Klac_2)*(1+NADH*compartment/Knadh_2+NAD*compartment/Knad_2))/compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="Keq_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="Klac_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="Knad_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="Knadh_2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="Kpyr_2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="NAD" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_305" name="NADH" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="V_2" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="compartment" order="8" role="volume"/>
        <ParameterDescription key="FunctionParameter_308" name="lactate" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_309" name="pyruvate" order="10" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for R3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_3*(pyruvate/Kpyr_3)*(NAD*compartment/Knad_3)*(CoA*compartment/Kcoa_3)*(NAD*compartment/(NAD*compartment+Ki_3*(NADH*compartment)))/((1+pyruvate*compartment/Kpyr_3)*(1+NAD*compartment/Knad_3+NADH*compartment/Knadh_3)*(1+CoA*compartment/Kcoa_3+AcCoA*compartment/Kaccoa_3))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="AcCoA" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_324" name="CoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="Kaccoa_3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="Kcoa_3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="Ki_3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="Knad_3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="Knadh_3" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="Kpyr_3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="NAD" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="NADH" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_333" name="V_3" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="compartment" order="11" role="volume"/>
        <ParameterDescription key="FunctionParameter_335" name="pyruvate" order="12" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for R4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_4*((AcCoA*compartment*PO4-AcP*compartment*(CoA*compartment)/Keq_4)/(Kiaccoa_4*Kpi_4))/(1+AcCoA*compartment/Kiaccoa_4+PO4/Kipi_4+AcP*compartment/Kiacp_4+CoA*compartment/Kicoa_4+AcCoA*compartment*PO4/(Kiaccoa_4*Kpi_4)+AcP*compartment*(CoA*compartment)/(Kacp_4*Kicoa_4))/compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_349" name="AcCoA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="AcP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_351" name="CoA" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_352" name="Kacp_4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="Keq_4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="Kiaccoa_4" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="Kiacp_4" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="Kicoa_4" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="Kipi_4" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="Kpi_4" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="PO4" order="10" role="substrate"/>
        <ParameterDescription key="FunctionParameter_360" name="V_4" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="compartment" order="12" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for R5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_5*((AcP*compartment*(ADP*compartment)-Ac*compartment*(ATP*compartment)/Keq_5)/(Kadp_5*Kacp_5))/((1+AcP*compartment/Kacp_5+Ac*compartment/Kac_5)*(1+ADP*compartment/Kadp_5+ATP*compartment/Katp_5))/compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_264" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_375" name="Ac" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_376" name="AcP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_377" name="Kac_5" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="Kacp_5" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="Kadp_5" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="Katp_5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="Keq_5" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="V_5" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="compartment" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for R6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_6*((AcCoA*compartment*(NADH*compartment)-CoA*compartment*(NAD*compartment)*(AcO*compartment)/Keq_6)/(Kaccoa_6*Knadh_6))/((1+NAD*compartment/Knad_6+NADH*compartment/Knadh_6)*(1+AcCoA*compartment/Kaccoa_6+CoA*compartment/Kcoa_6)*(1+AcO*compartment/Kaco_6))/compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_397" name="AcCoA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_398" name="AcO" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_399" name="CoA" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_400" name="Kaccoa_6" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="Kaco_6" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="Kcoa_6" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="Keq_6" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="Knad_6" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="Knadh_6" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="NAD" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_407" name="NADH" order="10" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="V_6" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="compartment" order="12" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for R7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_7*((AcO*compartment*(NADH*compartment)-EtOH*compartment*(NAD*compartment)/Keq_7)/(Kaco_7*Knadh_7))/((1+NAD*compartment/Knad_7+NADH*compartment/Knadh_7)*(1+AcO*compartment/Kaco_7+EtOH*compartment/Ketoh_7))/compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="AcO" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_263" name="EtOH" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_423" name="Kaco_7" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="Keq_7" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="Ketoh_7" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="Knad_7" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="Knadh_7" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="NAD" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_429" name="NADH" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_430" name="V_7" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="compartment" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for R8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_8*(pyruvate/Kpyr_8)*(1-AcLac*compartment/(pyruvate*compartment*Keq_8))*(pyruvate*compartment/Kpyr_8+AcLac*compartment/Kaclac_8)^(n_8-1)/(1+(pyruvate*compartment/Kpyr_8+AcLac*compartment/Kaclac_8)^n_8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_395" name="AcLac" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_271" name="Kaclac_8" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="Keq_8" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="Kpyr_8" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="V_8" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="compartment" order="5" role="volume"/>
        <ParameterDescription key="FunctionParameter_446" name="n_8" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="pyruvate" order="7" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for R9" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_9*(AcLac/Kaclac_9)/(1+AcLac*compartment/Kaclac_9+AcetoinIn*compartment/Kacet_9)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_261" name="AcLac" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="AcetoinIn" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_456" name="Kacet_9" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_457" name="Kaclac_9" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="V_9" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="compartment" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for R10" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_10*(AcetoinIn/Kacet_10)/(1+AcetoinIn*compartment/Kacet_10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="AcetoinIn" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_270" name="Kacet_10" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_466" name="V_10" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_467" name="compartment" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for R11" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_11*((AcetoinIn*compartment*(NADH*compartment)-Butanediol*compartment*(NAD*compartment)/Keq_11)/(Kacet_11*Knadh_11))/((1+AcetoinIn*compartment/Kacet_11+Butanediol*compartment/Kbut_11)*(1+NADH*compartment/Knadh_11+NAD*compartment/Knad_11))/compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_479" name="AcetoinIn" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_480" name="Butanediol" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_481" name="Kacet_11" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_482" name="Kbut_11" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_483" name="Keq_11" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="Knad_11" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="Knadh_11" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_486" name="NAD" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_487" name="NADH" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_488" name="V_11" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_489" name="compartment" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for R12" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_12*(ATP*compartment/(ADP*compartment*Katp_12))^n_12/(1+(ATP*compartment/(ADP*compartment*Katp_12))^n_12)/compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_474" name="ADP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_477" name="ATP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_475" name="Katp_12" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="V_12" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="compartment" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_501" name="n_12" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for R13" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V_13*(NADH*(O2*compartment)/(Knadh_13*Ko_13))/((1+NADH*compartment/Knadh_13+NAD*compartment/Knad_13)*(1+O2*compartment/Ko_13))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_510" name="Knad_13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_511" name="Knadh_13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_512" name="Ko_13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_513" name="NAD" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_514" name="NADH" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_515" name="O2" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_516" name="V_13" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_517" name="compartment" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Hoefnagel2002_PyruvateBranches_1" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/1358"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/11932446"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2005-03-06T20:03:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>m.j.1.schilstra@herts.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Schilstra</vCard:Family>
                <vCard:Given>Maria</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>SBML Team - Science and Technology Research Institute - University of Hertfordshire</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lenov@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Le Novère</vCard:Family>
                <vCard:Given>Nicolas</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2016-04-08T14:25:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL6617235316"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000017"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/map00620"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/map00650"/>
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006089"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006090"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>
      This a model from the article:
      <br/>
    <strong> Metabolic engineering of lactic acid bacteria, the combined approach: kinetic modelling, metabolic control and experimental analysis.
</strong>
    <br/>
Hoefnagel MH,  Starrenburg MJ,  Martens DE,  Hugenholtz J,  Kleerebezem M,  Van Swam II,  Bongers R,  Westerhoff HV,  Snoep JL 
      <em>Microbiology</em>2002 Apr; 148(4):1003-13 
      <a href="http://www.ncbi.nlm.nih.gov/pubmed/11932446">11932446</a>,
      <br/>
    <strong>Abstract:</strong>
    <br/>
Everyone who has ever tried to radically change metabolic fluxes knows that it is often harder to determine which enzymes have to be modified than it is to actually implement these changes. In the more traditional genetic engineering approaches ’bottle-necks’ are pinpointed using qualitative, intuitive approaches, but the alleviation of suspected ’rate-limiting’ steps has not often been successful. Here the authors demonstrate that a model of pyruvate distribution in Lactococcus lactis based on enzyme kinetics in combination with metabolic control analysis clearly indicates the key control points in the flux to acetoin and diacetyl, important flavour compounds. The model presented here (available at http://jjj.biochem.sun.ac.za/wcfs.html) showed that the enzymes with the greatest effect on this flux resided outside the acetolactate synthase branch itself. Experiments confirmed the predictions of the model, i.e. knocking out lactate dehydrogenase and overexpressing NADH oxidase increased the flux through the acetolactate synthase branch from 0 to 75% of measured product formation rates.
   </p>
    <p> The paper does not have any figure to be put as a curation figure in the BioModels database. The model does reproduce the fluxes and control-coefficients given in Figure 2 and Table 4. To reproduce the results, the model was changed from the description in the article according to the model on JWS: the parameter Kmpyr was changed to 2.5 from 25. The equillibrium constant for PTA reaction (R4) was changed from 0.0281 to 0.0065. The Km for oxygen in the NOX reaction (R13) was changed from 0.01 to 0.2. Slight deviations between the values in the article and the model results may stem from different algorithms used for finding the steady state.   
</p>
    <p>This model originates from BioModels Database: A Database of Annotated Published Models (http://www.ebi.ac.uk/biomodels/). It is copyright (c) 2005-2010 The BioModels.net Team.<br/>For more information see the <a href="http://www.ebi.ac.uk/biomodels/legal.html" target="_blank">terms of use</a>.<br/>To cite BioModels Database, please use: <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a></p>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_19" name="ADP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16761"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00008"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="NAD" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15846"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00003"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="ATP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15422"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00002"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="NADH" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16908"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00004"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="pyruvate" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15361"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00022"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="lactate" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:24996"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00186"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="CoA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15346"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00010"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="halfglucose" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="AcCoA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15351"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00024"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="AcP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15350"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00227"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Ac" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:30089"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00033"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="AcO" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15343"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00084"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="EtOH" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16236"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00469"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="AcLac" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16444"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00900"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="AcetoinIn" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15688"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00466"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="AcetoinOut" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15688"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00466"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Butanediol" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16812"/>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16982"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C03044"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C03046"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="O2" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15379"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00007"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="PO4" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18367"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00009"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_14" name="R1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/map00010"/>
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6865" name="V_1" value="2397"/>
          <Constant key="Parameter_8160" name="Kglc_1" value="0.1"/>
          <Constant key="Parameter_8159" name="Knad_1" value="0.1412"/>
          <Constant key="Parameter_8186" name="Kadp_1" value="0.04699"/>
          <Constant key="Parameter_8156" name="Kpyr_1" value="2.5"/>
          <Constant key="Parameter_5746" name="Knadh_1" value="0.08999"/>
          <Constant key="Parameter_8189" name="Katp_1" value="0.01867"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_8186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_8189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_8160"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_8159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5746"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_8156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_6865"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="R2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.27"/>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.28"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00703"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00704"/>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_178"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8157" name="V_2" value="5118"/>
          <Constant key="Parameter_6864" name="Keq_2" value="21120.7"/>
          <Constant key="Parameter_8158" name="Kpyr_2" value="1.5"/>
          <Constant key="Parameter_5747" name="Knadh_2" value="0.08"/>
          <Constant key="Parameter_5748" name="Klac_2" value="100"/>
          <Constant key="Parameter_5744" name="Knad_2" value="2.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_6864"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_5748"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_5744"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_5747"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_8158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_8157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="R3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00209"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.2.1.51"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5745" name="V_3" value="259"/>
          <Constant key="Parameter_8190" name="Kpyr_3" value="1"/>
          <Constant key="Parameter_8188" name="Knad_3" value="0.4"/>
          <Constant key="Parameter_7725" name="Kcoa_3" value="0.014"/>
          <Constant key="Parameter_7724" name="Ki_3" value="46.4159"/>
          <Constant key="Parameter_7702" name="Knadh_3" value="0.1"/>
          <Constant key="Parameter_7723" name="Kaccoa_3" value="0.008"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Parameter_7723"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Parameter_7725"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Parameter_7724"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_8188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Parameter_7702"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_8190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_5745"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="R4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00230"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.3.1.8"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7721" name="V_4" value="42"/>
          <Constant key="Parameter_7705" name="Keq_4" value="0.0065"/>
          <Constant key="Parameter_7704" name="Kiaccoa_4" value="0.2"/>
          <Constant key="Parameter_8187" name="Kpi_4" value="2.6"/>
          <Constant key="Parameter_7703" name="Kipi_4" value="2.6"/>
          <Constant key="Parameter_7701" name="Kiacp_4" value="0.2"/>
          <Constant key="Parameter_6107" name="Kicoa_4" value="0.029"/>
          <Constant key="Parameter_6105" name="Kacp_4" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Parameter_6105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_7705"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Parameter_7704"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_7701"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Parameter_6107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Parameter_7703"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Parameter_8187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_7721"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="R5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00315"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.2.1"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7688" name="V_5" value="2700"/>
          <Constant key="Parameter_6752" name="Keq_5" value="174.217"/>
          <Constant key="Parameter_7687" name="Kadp_5" value="0.5"/>
          <Constant key="Parameter_6543" name="Kacp_5" value="0.16"/>
          <Constant key="Parameter_6540" name="Kac_5" value="7"/>
          <Constant key="Parameter_6104" name="Katp_5" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Parameter_6540"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_6543"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Parameter_7687"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_6104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Parameter_6752"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Parameter_7688"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="R6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00228"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.2.1.10"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7722" name="V_6" value="97"/>
          <Constant key="Parameter_6539" name="Keq_6" value="1"/>
          <Constant key="Parameter_5653" name="Kaccoa_6" value="0.007"/>
          <Constant key="Parameter_7685" name="Knadh_6" value="0.025"/>
          <Constant key="Parameter_5656" name="Knad_6" value="0.08"/>
          <Constant key="Parameter_6535" name="Kcoa_6" value="0.008"/>
          <Constant key="Parameter_6106" name="Kaco_6" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Parameter_5653"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Parameter_6106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Parameter_6535"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Parameter_6539"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Parameter_5656"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Parameter_7685"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Parameter_7722"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="R7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00754"/>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_799"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.1"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6538" name="V_7" value="162"/>
          <Constant key="Parameter_6536" name="Keq_7" value="12354.9"/>
          <Constant key="Parameter_6537" name="Kaco_7" value="0.03"/>
          <Constant key="Parameter_6103" name="Knadh_7" value="0.05"/>
          <Constant key="Parameter_6542" name="Knad_7" value="0.08"/>
          <Constant key="Parameter_7689" name="Ketoh_7" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Parameter_6537"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Parameter_6536"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Parameter_7689"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Parameter_6542"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Parameter_6103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Parameter_6538"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="R8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00006"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.2.1.6"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7686" name="V_8" value="600"/>
          <Constant key="Parameter_8582" name="Kpyr_8" value="50"/>
          <Constant key="Parameter_6755" name="Keq_8" value="9e+12"/>
          <Constant key="Parameter_6541" name="Kaclac_8" value="100"/>
          <Constant key="Parameter_8060" name="n_8" value="2.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_6541"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_6755"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Parameter_8582"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Parameter_7686"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Parameter_8060"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="R9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R02947"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/4.1.1.5"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8581" name="V_9" value="106"/>
          <Constant key="Parameter_8058" name="Kaclac_9" value="10"/>
          <Constant key="Parameter_8057" name="Kacet_9" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Parameter_8057"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Parameter_8058"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Parameter_8581"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="R10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015562"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8585" name="V_10" value="200"/>
          <Constant key="Parameter_8583" name="Kacet_10" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_8583"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Parameter_8585"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="R11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.4"/>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.76"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R02344"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R02946"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6544" name="V_11" value="105"/>
          <Constant key="Parameter_8584" name="Keq_11" value="1400"/>
          <Constant key="Parameter_8059" name="Kacet_11" value="0.06"/>
          <Constant key="Parameter_5655" name="Knadh_11" value="0.02"/>
          <Constant key="Parameter_5657" name="Kbut_11" value="2.6"/>
          <Constant key="Parameter_8056" name="Knad_11" value="0.16"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Parameter_8059"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Parameter_5657"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Parameter_8584"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="Parameter_8056"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Parameter_5655"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Parameter_6544"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="R12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016887"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5654" name="V_12" value="900"/>
          <Constant key="Parameter_6754" name="Katp_12" value="6.196"/>
          <Constant key="Parameter_7924" name="n_12" value="2.58"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Parameter_6754"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Parameter_5654"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Parameter_7924"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="R13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006116"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7921" name="V_13" value="118"/>
          <Constant key="Parameter_6756" name="Knadh_13" value="0.041"/>
          <Constant key="Parameter_6753" name="Ko_13" value="0.2"/>
          <Constant key="Parameter_7922" name="Knad_13" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Parameter_7922"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Parameter_6756"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Parameter_6753"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Parameter_7921"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="R14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7949" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7949"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[ADP]" value="2.9508489724000002e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[NAD]" value="3.81201510108e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[ATP]" value="6.0221407600000008e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[NADH]" value="2.2101256589199999e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[pyruvate]" value="6.0221407600000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[lactate]" value="6.0221407600000008e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[CoA]" value="6.0221407600000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[halfglucose]" value="1.8066422279999999e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[AcCoA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[AcP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[Ac]" value="6.0221407600000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[AcO]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[EtOH]" value="6.0221407600000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[AcLac]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[AcetoinIn]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[AcetoinOut]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[Butanediol]" value="6.02214076e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[O2]" value="1.2044281520000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Compartments[compartment],Vector=Metabolites[PO4]" value="6.0221407600000002e+21" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=V_1" value="2397" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Kglc_1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Knad_1" value="0.14119999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Kadp_1" value="0.046989999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Kpyr_1" value="2.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Knadh_1" value="0.089990000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Katp_1" value="0.018669999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=V_2" value="5118" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Keq_2" value="21120.689999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Kpyr_2" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Knadh_2" value="0.080000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Klac_2" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Knad_2" value="2.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=V_3" value="259" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Kpyr_3" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Knad_3" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Kcoa_3" value="0.014" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Ki_3" value="46.415900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Knadh_3" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Kaccoa_3" value="0.0080000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=V_4" value="42" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Keq_4" value="0.0064999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Kiaccoa_4" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Kpi_4" value="2.6000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Kipi_4" value="2.6000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Kiacp_4" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Kicoa_4" value="0.029000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Kacp_4" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=V_5" value="2700" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=Keq_5" value="174.21700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=Kadp_5" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=Kacp_5" value="0.16" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=Kac_5" value="7" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=Katp_5" value="0.070000000000000007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R6],ParameterGroup=Parameters,Parameter=V_6" value="97" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R6],ParameterGroup=Parameters,Parameter=Keq_6" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R6],ParameterGroup=Parameters,Parameter=Kaccoa_6" value="0.0070000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R6],ParameterGroup=Parameters,Parameter=Knadh_6" value="0.025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R6],ParameterGroup=Parameters,Parameter=Knad_6" value="0.080000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R6],ParameterGroup=Parameters,Parameter=Kcoa_6" value="0.0080000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R6],ParameterGroup=Parameters,Parameter=Kaco_6" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R7],ParameterGroup=Parameters,Parameter=V_7" value="162" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R7],ParameterGroup=Parameters,Parameter=Keq_7" value="12354.9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R7],ParameterGroup=Parameters,Parameter=Kaco_7" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R7],ParameterGroup=Parameters,Parameter=Knadh_7" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R7],ParameterGroup=Parameters,Parameter=Knad_7" value="0.080000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R7],ParameterGroup=Parameters,Parameter=Ketoh_7" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R8],ParameterGroup=Parameters,Parameter=V_8" value="600" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R8],ParameterGroup=Parameters,Parameter=Kpyr_8" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R8],ParameterGroup=Parameters,Parameter=Keq_8" value="9000000000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R8],ParameterGroup=Parameters,Parameter=Kaclac_8" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R8],ParameterGroup=Parameters,Parameter=n_8" value="2.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R9],ParameterGroup=Parameters,Parameter=V_9" value="106" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R9],ParameterGroup=Parameters,Parameter=Kaclac_9" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R9],ParameterGroup=Parameters,Parameter=Kacet_9" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R10],ParameterGroup=Parameters,Parameter=V_10" value="200" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R10],ParameterGroup=Parameters,Parameter=Kacet_10" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=V_11" value="105" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=Keq_11" value="1400" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=Kacet_11" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=Knadh_11" value="0.02" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=Kbut_11" value="2.6000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=Knad_11" value="0.16" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=V_12" value="900" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=Katp_12" value="6.1959999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=n_12" value="2.5800000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R13],ParameterGroup=Parameters,Parameter=V_13" value="118" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R13],ParameterGroup=Parameters,Parameter=Knadh_13" value="0.041000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R13],ParameterGroup=Parameters,Parameter=Ko_13" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R13],ParameterGroup=Parameters,Parameter=Knad_13" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hoefnagel2002_PyruvateBranches_1,Vector=Reactions[R14],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 3.81201510108e+21 6.0221407600000002e+20 0 2.9508489724000002e+21 6.0221407600000002e+20 0 0 0 2.2101256589199999e+21 0 6.0221407600000008e+19 6.0221407600000008e+19 1.8066422279999999e+22 6.0221407600000002e+20 6.0221407600000002e+20 0 6.02214076e+18 1.2044281520000002e+20 6.0221407600000002e+21 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_30" name="Steady-State" type="steadyState" scheduled="true" updateModel="true">
      <Report reference="Report_21" target="ssoutH.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_28" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_27" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_26" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_30"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_33" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_32" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_21" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_30"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_19" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_21" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <SBMLReference file="../../../Downloads/BIOMD0000000017_url.xml">
    <SBMLMap SBMLid="ADP" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="ATP" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Ac" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="AcCoA" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="AcLac" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="AcO" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="AcP" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="AcetoinIn" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="AcetoinOut" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="Butanediol" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="CoA" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="EtOH" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="NAD" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="NADH" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="O2" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="PO4" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="R1" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="R10" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="R11" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="R12" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="R13" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="R14" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="R2" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="R3" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="R4" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="R5" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="R6" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="R7" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="R8" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="R9" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="halfglucose" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="lactate" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="pyruvate" COPASIkey="Metabolite_23"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_65" name="minute" symbol="min">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
