<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.38 (Build 268) (http://www.copasi.org) at 2023-03-29T21:05:47Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="38" versionDevel="268" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="vAK" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*ADP^2-AMP*ATP*k2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="ADP" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_263" name="AMP" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_262" name="ATP" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_261" name="k1" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_250" name="k2" order="4" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="v2sub2prod" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vfmax*S1*S2*(1-P1*P2/(Keq*S1*S2))/(Ks1*Ks2*(1+S1/Ks1+P1/Kp1)*(1+S2/Ks2+P2/Kp2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="Vfmax" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_268" name="Keq" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_267" name="S1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_266" name="Ks1" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_265" name="S2" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_270" name="Ks2" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_271" name="P1" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_272" name="Kp1" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_273" name="P2" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_274" name="Kp2" order="9" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="mass_action_irrev" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="k" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_283" name="S" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="v1sub" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vfmax*S/(Ks*(1+S/Ks))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="Vfmax" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_282" name="S" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_280" name="Ks" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="v1sub1prod" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vfmax*S*(1-P/(Keq*S))/(Ks*(1+S/Ks+P/Kp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="Vfmax" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_278" name="Keq" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_279" name="S" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_276" name="Ks" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_275" name="P" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_285" name="Kp" order="5" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for TPI_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v1sub1prod(TPI_g_Vmax,TPI_g_Keq,DHAP_g,TPI_g_KmDHAP,GA3P_g,TPI_g_KmGA3P)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="DHAP_g" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="GA3P_g" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_289" name="TPI_g_Keq" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="TPI_g_KmDHAP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="TPI_g_KmGA3P" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="TPI_g_Vmax" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="glycosome" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for PYK_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        PYK_c_Vmax*ADP_c*(1-Pyr_c*ATP_c/(PYK_c_Keq*PEP_c*ADP_c))*(PEP_c/(PYK_c_KmPEP*(1+ADP_c/PYK_c_KiADP+ATP_c/PYK_c_KiATP)))^PYK_c_n/(PYK_c_KmADP*(1+(PEP_c/(PYK_c_KmPEP*(1+ADP_c/PYK_c_KiADP+ATP_c/PYK_c_KiATP)))^PYK_c_n+Pyr_c/PYK_c_KmPyr)*(1+ADP_c/PYK_c_KmADP+ATP_c/PYK_c_KmATP))/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="ADP_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="ATP_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_297" name="PEP_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="PYK_c_Keq" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="PYK_c_KiADP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="PYK_c_KiATP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="PYK_c_KmADP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="PYK_c_KmATP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="PYK_c_KmPEP" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="PYK_c_KmPyr" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="PYK_c_Vmax" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="PYK_c_n" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="Pyr_c" order="12" role="product"/>
        <ParameterDescription key="FunctionParameter_306" name="cytosol" order="13" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for PFK_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        PFK_g_Vmax*PFK_g_Ki1*Fru6P_g*ATP_g*(1-Fru16BP_g*ADP_g/(PFK_g_Keq*Fru6P_g*ATP_g))/(PFK_g_KmFru6P*PFK_g_KmATP*(Fru16BP_g+PFK_g_Ki1)*(PFK_g_KsATP/PFK_g_KmATP+Fru6P_g/PFK_g_KmFru6P+ATP_g/PFK_g_KmATP+ADP_g/PFK_g_KmADP+Fru16BP_g*ADP_g/(PFK_g_KmADP*PFK_g_Ki2)+Fru6P_g*ATP_g/(PFK_g_KmFru6P*PFK_g_KmATP)))/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="ADP_g" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_319" name="ATP_g" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_318" name="Fru16BP_g" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_317" name="Fru6P_g" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="PFK_g_Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="PFK_g_Ki1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="PFK_g_Ki2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="PFK_g_KmADP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="PFK_g_KmATP" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="PFK_g_KmFru6P" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="PFK_g_KsATP" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="PFK_g_Vmax" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="glycosome" order="12" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for G6PDH_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(G6PDH_g_Vmax,G6PDH_g_Keq,Glc6P_g,G6PDH_g_KmGlc6P,NADP_g,G6PDH_g_KmNADP,_6PGL_g,G6PDH_g_Km6PGL,NADPH_g,G6PDH_g_KmNADPH)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="G6PDH_g_Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="G6PDH_g_Km6PGL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="G6PDH_g_KmGlc6P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="G6PDH_g_KmNADP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="G6PDH_g_KmNADPH" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="G6PDH_g_Vmax" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="Glc6P_g" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="NADPH_g" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_324" name="NADP_g" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_323" name="_6PGL_g" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_322" name="glycosome" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for PGAM_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v1sub1prod(PGAM_c_Vmax,PGAM_c_Keq,_3PGA_c,PGAM_c_Km3PGA,_2PGA_c,PGAM_c_Km2PGA)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_341" name="PGAM_c_Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="PGAM_c_Km2PGA" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="PGAM_c_Km3PGA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="PGAM_c_Vmax" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="_2PGA_c" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_336" name="_3PGA_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="cytosol" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="v1sub_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        PyrT_c_Vmax*Pyr_c/(PyrT_c_KmPyr*(1+Pyr_c/PyrT_c_KmPyr))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="PyrT_c_KmPyr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="PyrT_c_Vmax" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="Pyr_c" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for G6PDH_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(G6PDH_c_Vmax,G6PDH_c_Keq,Glc6P_c,G6PDH_c_KmGlc6P,NADP_c,G6PDH_c_KmNADP,_6PGL_c,G6PDH_c_Km6PGL,NADPH_c,G6PDH_c_KmNADPH)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="G6PDH_c_Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="G6PDH_c_Km6PGL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="G6PDH_c_KmGlc6P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="G6PDH_c_KmNADP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="G6PDH_c_KmNADPH" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="G6PDH_c_Vmax" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="Glc6P_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="NADPH_c" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_349" name="NADP_c" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="_6PGL_c" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_351" name="cytosol" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for ENO_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v1sub1prod(ENO_c_Vmax,ENO_c_Keq,_2PGA_c,ENO_c_Km2PGA,PEP_c,ENO_c_KmPEP)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_362" name="ENO_c_Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="ENO_c_Km2PGA" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="ENO_c_KmPEP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="ENO_c_Vmax" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="PEP_c" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_357" name="_2PGA_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_356" name="cytosol" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for HXK_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(HXK_g_Vmax,HXK_g_Keq,Glc_g,HXK_g_KmGlc,ATP_g,HXK_g_KmATP,Glc6P_g,HXK_g_KmGlc6P,ADP_g,HXK_g_KmADP)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="ADP_g" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_364" name="ATP_g" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_363" name="Glc6P_g" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_352" name="Glc_g" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_353" name="HXK_g_Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="HXK_g_KmADP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="HXK_g_KmATP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="HXK_g_KmGlc" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="HXK_g_KmGlc6P" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="HXK_g_Vmax" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="glycosome" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="mass_action_rev_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _3PGAT_g_k*_3PGA_g-_3PGAT_g_k*_3PGA_c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="_3PGAT_g_k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="_3PGA_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_378" name="_3PGA_g" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for NADPHu_c" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mass_action_irrev(NADPHu_c_k,NADPH_c)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="NADPH_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="NADPHu_c_k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="cytosol" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for HXK_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(HXK_c_Vmax,HXK_c_Keq,Glc_c,HXK_c_KmGlc,ATP_c,HXK_c_KmATP,Glc6P_c,HXK_c_KmGlc6P,ADP_c,HXK_c_KmADP)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_372" name="ADP_c" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_373" name="ATP_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_374" name="Glc6P_c" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_371" name="Glc_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_370" name="HXK_c_Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="HXK_c_KmADP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="HXK_c_KmATP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="HXK_c_KmGlc" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="HXK_c_KmGlc6P" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="HXK_c_Vmax" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="cytosol" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for NADPHu_g" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mass_action_irrev(NADPHu_g_k,NADPH_g)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_397" name="NADPH_g" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="NADPHu_g_k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="glycosome" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for AK_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vAK(ADP_c,AMP_c,ATP_c,AK_c_k1,AK_c_k2)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_392" name="ADP_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_393" name="AK_c_k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_394" name="AK_c_k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="AMP_c" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_390" name="ATP_c" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_389" name="cytosol" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for G6PP_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v1sub1prod(G6PP_c_Vmax,G6PP_c_Keq,Glc6P_c,G6PP_c_KmGlc6P,Glc_c,G6PP_c_KmGlc)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_401" name="G6PP_c_Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="G6PP_c_KmGlc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="G6PP_c_KmGlc6P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="G6PP_c_Vmax" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="Glc6P_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_388" name="Glc_c" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_402" name="cytosol" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for _6PGDH_g" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(_6PGDH_g_Vmax,_6PGDH_g_Keq,_6PG_g,_6PGDH_g_Km6PG,NADP_g,_6PGDH_g_KmNADP,Rul5P_g,_6PGDH_g_KmRul5P,NADPH_g,_6PGDH_g_KmNADPH)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="NADPH_g" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_408" name="NADP_g" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_407" name="Rul5P_g" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_406" name="_6PGDH_g_Keq" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="_6PGDH_g_Km6PG" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="_6PGDH_g_KmNADP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="_6PGDH_g_KmNADPH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="_6PGDH_g_KmRul5P" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="_6PGDH_g_Vmax" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="_6PG_g" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_413" name="glycosome" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for PGI_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        PGI_g_Vmax*Glc6P_g*(1-Fru6P_g/(PGI_g_Keq*Glc6P_g))/(PGI_g_KmGlc6P*(1+Glc6P_g/PGI_g_KmGlc6P+Fru6P_g/PGI_g_KmFru6P+_6PG_g/PGI_g_Ki6PG))/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_424" name="Fru6P_g" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_423" name="Glc6P_g" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_422" name="PGI_g_Keq" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="PGI_g_Ki6PG" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="PGI_g_KmFru6P" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="PGI_g_KmGlc6P" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="PGI_g_Vmax" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="_6PG_g" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_416" name="glycosome" order="8" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for AK_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vAK(ADP_g,AMP_g,ATP_g,AK_g_k1,AK_g_k2)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_431" name="ADP_g" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_430" name="AK_g_k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="AK_g_k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="AMP_g" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_427" name="ATP_g" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_426" name="glycosome" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for TOX_c" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mass_action_irrev(TOX_c_k,TSH2_c)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_434" name="TOX_c_k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_433" name="TSH2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_432" name="cytosol" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for GDA_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Gly3P_g*GDA_g_k*DHAP_c-Gly3P_c*GDA_g_k*DHAP_g
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_425" name="DHAP_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="DHAP_g" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_415" name="GDA_g_k" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="Gly3P_c" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_436" name="Gly3P_g" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for PGL_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (PGL_c_k*cytosol*(_6PGL_c-_6PG_c/PGL_c_Keq)+v1sub1prod(PGL_c_Vmax,PGL_c_Keq,_6PGL_c,PGL_c_Km6PGL,_6PG_c,PGL_c_Km6PG))/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_441" name="PGL_c_Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="PGL_c_Km6PG" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="PGL_c_Km6PGL" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="PGL_c_Vmax" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="PGL_c_k" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_442" name="_6PGL_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_443" name="_6PG_c" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_444" name="cytosol" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for _6PGDH_c" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(_6PGDH_c_Vmax,_6PGDH_c_Keq,_6PG_c,_6PGDH_c_Km6PG,NADP_c,_6PGDH_c_KmNADP,Rul5P_c,_6PGDH_c_KmRul5P,NADPH_c,_6PGDH_c_KmNADPH)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_452" name="NADPH_c" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_451" name="NADP_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_450" name="Rul5P_c" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_449" name="_6PGDH_c_Keq" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_448" name="_6PGDH_c_Km6PG" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="_6PGDH_c_KmNADP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="_6PGDH_c_KmNADPH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="_6PGDH_c_KmRul5P" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="_6PGDH_c_Vmax" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="_6PG_c" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_455" name="cytosol" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for PPI_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_67">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v1sub1prod(PPI_c_Vmax,PPI_c_Keq,Rul5P_c,PPI_c_KmRul5P,Rib5P_c,PPI_c_KmRib5P)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_466" name="PPI_c_Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="PPI_c_KmRib5P" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="PPI_c_KmRul5P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_463" name="PPI_c_Vmax" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_462" name="Rib5P_c" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_461" name="Rul5P_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_460" name="cytosol" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for PPI_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_68">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v1sub1prod(PPI_g_Vmax,PPI_g_Keq,Rul5P_g,PPI_g_KmRul5P,Rib5P_g,PPI_g_KmRib5P)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_469" name="PPI_g_Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_468" name="PPI_g_KmRib5P" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_467" name="PPI_g_KmRul5P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_456" name="PPI_g_Vmax" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_457" name="Rib5P_g" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_458" name="Rul5P_g" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_459" name="glycosome" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for GlcT_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_69">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        GlcT_c_Vmax*(Glc_e-Glc_c)/(GlcT_c_KmGlc+Glc_e+Glc_c+GlcT_c_alpha*Glc_e*Glc_c/GlcT_c_KmGlc)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_476" name="GlcT_c_KmGlc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_475" name="GlcT_c_Vmax" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="GlcT_c_alpha" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_473" name="Glc_c" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_472" name="Glc_e" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for PGL_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_70">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (glycosome*PGL_g_k*(_6PGL_g-_6PG_g/PGL_g_Keq)+v1sub1prod(PGL_g_Vmax,PGL_g_Keq,_6PGL_g,PGL_g_Km6PGL,_6PG_g,PGL_g_Km6PG))/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_479" name="PGL_g_Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_478" name="PGL_g_Km6PG" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_477" name="PGL_g_Km6PGL" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_470" name="PGL_g_Vmax" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_471" name="PGL_g_k" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="_6PGL_g" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_481" name="_6PG_g" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_482" name="glycosome" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for TR_c" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_71">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(TR_c_Vmax,TR_c_Keq,TS2_c,TR_c_KmTS2,NADPH_c,TR_c_KmNADPH,TSH2_c,TR_c_KmTSH2,NADP_c,TR_c_KmNADP)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_490" name="NADPH_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_489" name="NADP_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_488" name="TR_c_Keq" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_487" name="TR_c_KmNADP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_486" name="TR_c_KmNADPH" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="TR_c_KmTS2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="TR_c_KmTSH2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_483" name="TR_c_Vmax" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_491" name="TS2_c" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_492" name="TSH2_c" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_493" name="cytosol" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for PGK_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_72">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(PGK_g_Vmax,PGK_g_Keq,_13BPGA_g,PGK_g_Km13BPGA,ADP_g,PGK_g_KmADP,_3PGA_g,PGK_g_Km3PGA,ATP_g,PGK_g_KmATP)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_504" name="ADP_g" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_503" name="ATP_g" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_502" name="PGK_g_Keq" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_501" name="PGK_g_Km13BPGA" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="PGK_g_Km3PGA" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_499" name="PGK_g_KmADP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_498" name="PGK_g_KmATP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_497" name="PGK_g_Vmax" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_496" name="_13BPGA_g" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_495" name="_3PGA_g" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_494" name="glycosome" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for G3PDH_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_73">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(G3PDH_g_Vmax,G3PDH_g_Keq,DHAP_g,G3PDH_g_KmDHAP,NADH_g,G3PDH_g_KmNADH,Gly3P_g,G3PDH_g_KmGly3P,NAD_g,G3PDH_g_KmNAD)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_515" name="DHAP_g" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_514" name="G3PDH_g_Keq" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_513" name="G3PDH_g_KmDHAP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_512" name="G3PDH_g_KmGly3P" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_511" name="G3PDH_g_KmNAD" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_510" name="G3PDH_g_KmNADH" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="G3PDH_g_Vmax" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_508" name="Gly3P_g" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_507" name="NADH_g" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_506" name="NAD_g" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_505" name="glycosome" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for ATPu_c" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_74">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ATPu_c_k*ATP_c/ADP_c/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_526" name="ADP_c" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_525" name="ATP_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_524" name="ATPu_c_k" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_523" name="cytosol" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="v2sub2prod_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_75">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        GK_g_Vmax*Gly3P_g*ADP_g*(1-Gly_e*ATP_g/(GK_g_Keq*Gly3P_g*ADP_g))/(GK_g_KmGly3P*GK_g_KmADP*(1+Gly3P_g/GK_g_KmGly3P+Gly_e/GK_g_KmGly)*(1+ADP_g/GK_g_KmADP+ATP_g/GK_g_KmATP))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_519" name="ADP_g" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_520" name="ATP_g" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_521" name="GK_g_Keq" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_522" name="GK_g_KmADP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_518" name="GK_g_KmATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_517" name="GK_g_KmGly" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="GK_g_KmGly3P" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="GK_g_Vmax" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="Gly3P_g" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_529" name="Gly_e" order="9" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for ALD_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_76">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ALD_g_Vmax*Fru16BP_g*(1-GA3P_g*DHAP_g/(Fru16BP_g*ALD_g_Keq))/(ALD_g_KmFru16BP*(1+ATP_g/ALD_g_KiATP+ADP_g/ALD_g_KiADP+AMP_g/ALD_g_KiAMP)*(1+GA3P_g/ALD_g_KmGA3P+DHAP_g/ALD_g_KmDHAP+Fru16BP_g/(ALD_g_KmFru16BP*(1+ATP_g/ALD_g_KiATP+ADP_g/ALD_g_KiADP+AMP_g/ALD_g_KiAMP))+GA3P_g*DHAP_g/(ALD_g_KmGA3P*ALD_g_KmDHAP)+Fru16BP_g*GA3P_g/(ALD_g_KmFru16BP*ALD_g_KiGA3P*(1+ATP_g/ALD_g_KiATP+ADP_g/ALD_g_KiADP+AMP_g/ALD_g_KiAMP))))/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_539" name="ADP_g" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_538" name="ALD_g_Keq" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_537" name="ALD_g_KiADP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_536" name="ALD_g_KiAMP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_535" name="ALD_g_KiATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_534" name="ALD_g_KiGA3P" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_533" name="ALD_g_KmDHAP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_532" name="ALD_g_KmFru16BP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_531" name="ALD_g_KmGA3P" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_530" name="ALD_g_Vmax" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_540" name="AMP_g" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_541" name="ATP_g" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_542" name="DHAP_g" order="12" role="product"/>
        <ParameterDescription key="FunctionParameter_543" name="Fru16BP_g" order="13" role="substrate"/>
        <ParameterDescription key="FunctionParameter_544" name="GA3P_g" order="14" role="product"/>
        <ParameterDescription key="FunctionParameter_545" name="glycosome" order="15" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for GAPDH_g" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_77">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(GAPDH_g_Vmax,GAPDH_g_Keq,GA3P_g,GAPDH_g_KmGA3P,NAD_g,GAPDH_g_KmNAD,_13BPGA_g,GAPDH_g_Km13BPGA,NADH_g,GAPDH_g_KmNADH)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_561" name="GA3P_g" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_560" name="GAPDH_g_Keq" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_559" name="GAPDH_g_Km13BPGA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_558" name="GAPDH_g_KmGA3P" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_557" name="GAPDH_g_KmNAD" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_556" name="GAPDH_g_KmNADH" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="GAPDH_g_Vmax" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_554" name="NADH_g" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_553" name="NAD_g" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_552" name="_13BPGA_g" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_551" name="glycosome" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for GPO_c" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_78">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v1sub(GPO_c_Vmax,Gly3P_c,GPO_c_KmGly3P)/cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_567" name="GPO_c_KmGly3P" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_566" name="GPO_c_Vmax" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_565" name="Gly3P_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_564" name="cytosol" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for RK_g" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_79">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v2sub2prod(RK_g_Vmax,RK_g_Keq,Rib5P_g,RK_g_KmRib5P,ADP_g,RK_g_KmADP,Rib_g,RK_g_KmRib,ATP_g,RK_g_KmATP)/glycosome
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_547" name="ADP_g" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_546" name="ATP_g" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_562" name="RK_g_Keq" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_563" name="RK_g_KmADP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_548" name="RK_g_KmATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_549" name="RK_g_KmRib" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="RK_g_KmRib5P" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_568" name="RK_g_Vmax" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_569" name="Rib5P_g" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_570" name="Rib_g" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_571" name="glycosome" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1" simulationType="time" timeUnit="min" volumeUnit="µl" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/5691"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000514"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/24339766"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-01-31T16:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>eduardk@chalmers.se</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Kerkhoven</vCard:Family>
                <vCard:Given>Eduard</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Chalmers University of Technology</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>viji@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Chelliah</vCard:Family>
                <vCard:Given>Vijayalakshmi</vCard:Given>
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
        <dcterms:W3CDTF>2014-03-05T15:53:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006096"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006098"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1401070000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000510"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei -MODEL C (with glucosomal ribokinase)</div>
    <div class="dc:description">
      <p>There are six models (Model A, B, C, C-fruc, D, D-fruc) described in the paper. Model A (        <a href="http://identifiers.org/biomodels.db/BIOMD0000000513">BIOMD0000000513</a>
            ) is the model developed originally by Achar et al. (2012) (        <a href="http://identifiers.org/biomodels.db/BIOMD0000000428">BIOMD0000000428</a>
            ), which describes glycolysis in T.brucei. This glycolysis model is extended to include pentose phosphate pathway (PPP), which is Model B ((        <a href="http://identifiers.org/biomodels.db/BIOMD0000000514">BIOMD0000000514</a>
            ). Model B is further extended to include glycosomal ribokinase, leading to Model C (        <a href="http://identifiers.org/biomodels.db/BIOMD0000000510">BIOMD0000000510</a>
            ). Model D (        <a href="http://identifiers.org/biomodels.db/BIOMD0000000511">BIOMD0000000511</a>
            ) is again an extension of Model B, which includes an ATP:ADP antiporter. Model C-fruc (        <a href="http://identifiers.org/biomodels.db/BIOMD0000000515">BIOMD0000000515</a>
            ) and Model D-fruc (        <a href="http://identifiers.org/biomodels.db/BIOMD0000000516">BIOMD0000000516</a>
            ) are extensions of Model C and D, respectively, which includes fructose transporter and its subsequent utilizing reactions. This model correspond to Model C of the paper.        </p>
    </div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/24339766" title="Access to this publication">Handling uncertainty in dynamic models: the pentose phosphate pathway in Trypanosoma brucei.</a>
      </div>
      <div class="bibo:authorList">Kerkhoven EJ, Achcar F, Alibu VP, Burchmore RJ, Gilbert IH, Trybiło M, Driessen NN, Gilbert D, Breitling R, Bakker BM, Barrett MP.</div>
      <div class="bibo:Journal">PLoS Comput Biol. 2013 Dec;9(12):e1003371.</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>Dynamic models of metabolism can be useful in identifying potential drug targets, especially in unicellular organisms. A model of glycolysis in the causative agent of human African trypanosomiasis, Trypanosoma brucei, has already shown the utility of this approach. Here we add the pentose phosphate pathway (PPP) of T. brucei to the glycolytic model. The PPP is localized to both the cytosol and the glycosome and adding it to the glycolytic model without further adjustments leads to a draining of the essential bound-phosphate moiety within the glycosome. This phosphate "leak" must be resolved for the model to be a reasonable representation of parasite physiology. Two main types of theoretical solution to the problem could be identified: (i) including additional enzymatic reactions in the glycosome, or (ii) adding a mechanism to transfer bound phosphates between cytosol and glycosome. One example of the first type of solution would be the presence of a glycosomal ribokinase to regenerate ATP from ribose 5-phosphate and ADP. Experimental characterization of ribokinase in T. brucei showed that very low enzyme levels are sufficient for parasite survival, indicating that other mechanisms are required in controlling the phosphate leak. Examples of the second type would involve the presence of an ATP:ADP exchanger or recently described permeability pores in the glycosomal membrane, although the current absence of identified genes encoding such molecules impedes experimental testing by genetic manipulation. Confronted with this uncertainty, we present a modeling strategy that identifies robust predictions in the context of incomplete system characterization. We illustrate this strategy by exploring the mechanism underlying the essential function of one of the PPP enzymes, and validate it by confirming the model predictions experimentally.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on        <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
            and identified
by:        <a href="http://identifiers.org/biomodels.db/BIOMD0000000510">BIOMD0000000510</a>
            .        </p>
      <p>To cite BioModels Database, please use:        <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database: An enhanced, curated and annotated resource
for published quantitative kinetic models</a>
            .        </p>
    </div>
    <div class="dc:license">
      <p>To the extent possible under law, all copyright and related or
neighbouring rights to this encoded model have been dedicated to the public
domain worldwide. Please refer to        <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0 Public Domain
Dedication</a>
            for more information.        </p>
    </div>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cytosol" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000290" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005829" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="glycosome" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000290" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0020015" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000290" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005623" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="_2PGA_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubchem.compound/59" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="DHAP_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:57642" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="ATP_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15422" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="DHAP_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:57642" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="ADP_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16761" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Glc6P_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:4170" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="ADP_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16761" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="_3PGA_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17794" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="NADPH_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16474" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Fru6P_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubchem.compound/444848" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Pi_g" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:28874" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="O2_c" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15379" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="NADP_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18009" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="ATP_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15422" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="NADP_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18009" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="_6PG_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:48928" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="CO2_c" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16526" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Rul5P_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:58121" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="_6PG_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:48928" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Rul5P_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:58121" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Glc6P_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:4170" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Rib5P_c" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:58273" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="_13BPGA_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubchem.compound/683" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Glc_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17234" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Rib5P_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:58273" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Glc_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17234" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Glc_e" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17234" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="NADPH_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16474" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Rib_g" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33942" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Pyr_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15361" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Pyr_e" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15361" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="NAD_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:13389" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="Fru16BP_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:40595" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="GA3P_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17138" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="Gly_e" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17754" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="TSH2_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:35490" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="CO2_g" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16526" />
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Gly3P_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:14336" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="Gly3P_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:14336" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="_6PGL_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9GRG6" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="TS2_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17842" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="_6PGL_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9GRG6" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="PEP_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18021" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="AMP_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16027" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="_3PGA_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17794" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="AMP_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16027" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="NADH_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16908" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="TPI_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4617" name="TPI_g_Vmax" value="999.3"/>
          <Constant key="Parameter_4616" name="TPI_g_Keq" value="0.046"/>
          <Constant key="Parameter_4619" name="TPI_g_KmDHAP" value="1.2"/>
          <Constant key="Parameter_4618" name="TPI_g_KmGA3P" value="0.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_4616"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_4619"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_4618"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_4617"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="PYK_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4615" name="PYK_c_Vmax" value="1020"/>
          <Constant key="Parameter_4614" name="PYK_c_KmPEP" value="0.34"/>
          <Constant key="Parameter_8423" name="PYK_c_KiATP" value="0.57"/>
          <Constant key="Parameter_5289" name="PYK_c_KiADP" value="0.64"/>
          <Constant key="Parameter_5286" name="PYK_c_n" value="2.5"/>
          <Constant key="Parameter_8424" name="PYK_c_KmADP" value="0.114"/>
          <Constant key="Parameter_8425" name="PYK_c_Keq" value="10800"/>
          <Constant key="Parameter_8421" name="PYK_c_KmPyr" value="50"/>
          <Constant key="Parameter_8422" name="PYK_c_KmATP" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_8425"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_5289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_8423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_8424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_8422"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Parameter_4614"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_8421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_4615"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_5286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="PFK_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5290" name="PFK_g_Vmax" value="1708"/>
          <Constant key="Parameter_5288" name="PFK_g_Ki1" value="15.8"/>
          <Constant key="Parameter_5295" name="PFK_g_KmFru6P" value="0.999"/>
          <Constant key="Parameter_5294" name="PFK_g_KmATP" value="0.0648"/>
          <Constant key="Parameter_7530" name="PFK_g_Keq" value="1035"/>
          <Constant key="Parameter_5293" name="PFK_g_KsATP" value="0.0393"/>
          <Constant key="Parameter_5291" name="PFK_g_KmADP" value="1"/>
          <Constant key="Parameter_7533" name="PFK_g_Ki2" value="10.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Parameter_7530"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Parameter_5288"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_7533"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Parameter_5291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_5294"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_5295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Parameter_5293"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Parameter_5290"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="G6PDH_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7532" name="G6PDH_g_Vmax" value="8.4"/>
          <Constant key="Parameter_5287" name="G6PDH_g_Keq" value="5.02"/>
          <Constant key="Parameter_7531" name="G6PDH_g_KmGlc6P" value="0.058"/>
          <Constant key="Parameter_7529" name="G6PDH_g_KmNADP" value="0.0094"/>
          <Constant key="Parameter_8075" name="G6PDH_g_Km6PGL" value="0.04"/>
          <Constant key="Parameter_8073" name="G6PDH_g_KmNADPH" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_5287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_8075"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_7531"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Parameter_7529"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_8073"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Parameter_7532"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="PGAM_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5299" name="PGAM_c_Vmax" value="225"/>
          <Constant key="Parameter_4850" name="PGAM_c_Keq" value="0.17"/>
          <Constant key="Parameter_5298" name="PGAM_c_Km3PGA" value="0.15"/>
          <Constant key="Parameter_5099" name="PGAM_c_Km2PGA" value="0.16"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Parameter_4850"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Parameter_5099"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_5298"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Parameter_5299"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="PyrT_c" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5096" name="PyrT_c_Vmax" value="230"/>
          <Constant key="Parameter_8072" name="PyrT_c_KmPyr" value="1.96"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Parameter_8072"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Parameter_5096"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="G6PDH_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5292" name="G6PDH_c_Vmax" value="8.4"/>
          <Constant key="Parameter_5501" name="G6PDH_c_Keq" value="5.02"/>
          <Constant key="Parameter_8226" name="G6PDH_c_KmGlc6P" value="0.058"/>
          <Constant key="Parameter_5296" name="G6PDH_c_KmNADP" value="0.0094"/>
          <Constant key="Parameter_8229" name="G6PDH_c_Km6PGL" value="0.04"/>
          <Constant key="Parameter_5497" name="G6PDH_c_KmNADPH" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_5501"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Parameter_8229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Parameter_8226"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Parameter_5296"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Parameter_5497"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Parameter_5292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="ENO_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8074" name="ENO_c_Vmax" value="598"/>
          <Constant key="Parameter_5500" name="ENO_c_Keq" value="4.17"/>
          <Constant key="Parameter_5498" name="ENO_c_Km2PGA" value="0.054"/>
          <Constant key="Parameter_5499" name="ENO_c_KmPEP" value="0.24"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Parameter_5500"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Parameter_5498"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5499"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Parameter_8074"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="HXK_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8071" name="HXK_g_Vmax" value="1774.68"/>
          <Constant key="Parameter_5098" name="HXK_g_Keq" value="759"/>
          <Constant key="Parameter_5300" name="HXK_g_KmGlc" value="0.1"/>
          <Constant key="Parameter_5297" name="HXK_g_KmATP" value="0.116"/>
          <Constant key="Parameter_8517" name="HXK_g_KmGlc6P" value="2.7"/>
          <Constant key="Parameter_4853" name="HXK_g_KmADP" value="0.126"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_5098"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Parameter_4853"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_5297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Parameter_5300"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Parameter_8517"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Parameter_8071"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="RK_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5097" name="RK_g_Vmax" value="10"/>
          <Constant key="Parameter_8365" name="RK_g_Keq" value="0.0036"/>
          <Constant key="Parameter_8516" name="RK_g_KmRib5P" value="0.39"/>
          <Constant key="Parameter_8363" name="RK_g_KmADP" value="0.25"/>
          <Constant key="Parameter_8518" name="RK_g_KmRib" value="0.51"/>
          <Constant key="Parameter_5100" name="RK_g_KmATP" value="0.24"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Parameter_8365"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Parameter_8363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Parameter_5100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Parameter_8518"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Parameter_8516"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Parameter_5097"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="_3PGAT_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8362" name="_3PGAT_g_k" value="250"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_8362"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="NADPHu_c" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8520" name="NADPHu_c_k" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Parameter_8520"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="HXK_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8519" name="HXK_c_Vmax" value="154.32"/>
          <Constant key="Parameter_8364" name="HXK_c_Keq" value="759"/>
          <Constant key="Parameter_8228" name="HXK_c_KmGlc" value="0.1"/>
          <Constant key="Parameter_8230" name="HXK_c_KmATP" value="0.116"/>
          <Constant key="Parameter_8361" name="HXK_c_KmGlc6P" value="2.7"/>
          <Constant key="Parameter_8227" name="HXK_c_KmADP" value="0.126"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_8364"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Parameter_8227"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Parameter_8230"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Parameter_8228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Parameter_8361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Parameter_8519"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="NADPHu_g" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4852" name="NADPHu_g_k" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Parameter_4852"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="AK_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5673" name="AK_c_k1" value="480"/>
          <Constant key="Parameter_5670" name="AK_c_k2" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Parameter_5673"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Parameter_5670"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="G6PP_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4854" name="G6PP_c_Vmax" value="28"/>
          <Constant key="Parameter_4851" name="G6PP_c_Keq" value="263"/>
          <Constant key="Parameter_5671" name="G6PP_c_KmGlc6P" value="5.6"/>
          <Constant key="Parameter_5730" name="G6PP_c_KmGlc" value="5.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Parameter_4851"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Parameter_5730"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Parameter_5671"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Parameter_4854"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="_6PGDH_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5727" name="_6PGDH_g_Vmax" value="10.6"/>
          <Constant key="Parameter_5674" name="_6PGDH_g_Keq" value="47"/>
          <Constant key="Parameter_5672" name="_6PGDH_g_Km6PG" value="0.0035"/>
          <Constant key="Parameter_5731" name="_6PGDH_g_KmNADP" value="0.001"/>
          <Constant key="Parameter_5728" name="_6PGDH_g_KmRul5P" value="0.03"/>
          <Constant key="Parameter_5729" name="_6PGDH_g_KmNADPH" value="0.0006"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Parameter_5674"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Parameter_5672"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Parameter_5731"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Parameter_5729"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Parameter_5728"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Parameter_5727"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="PGI_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7327" name="PGI_g_Vmax" value="1305"/>
          <Constant key="Parameter_7324" name="PGI_g_KmGlc6P" value="0.4"/>
          <Constant key="Parameter_7328" name="PGI_g_Keq" value="0.457"/>
          <Constant key="Parameter_7326" name="PGI_g_KmFru6P" value="0.12"/>
          <Constant key="Parameter_7325" name="PGI_g_Ki6PG" value="0.14"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Parameter_7328"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Parameter_7325"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Parameter_7326"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Parameter_7324"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Parameter_7327"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="AK_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6151" name="AK_g_k1" value="480"/>
          <Constant key="Parameter_6148" name="AK_g_k2" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Parameter_6151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Parameter_6148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="TOX_c" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6152" name="TOX_c_k" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Parameter_6152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="GDA_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6150" name="GDA_g_k" value="600"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Parameter_6150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="PGL_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6149" name="PGL_c_Vmax" value="28"/>
          <Constant key="Parameter_5675" name="PGL_c_Keq" value="20000"/>
          <Constant key="Parameter_5678" name="PGL_c_Km6PGL" value="0.05"/>
          <Constant key="Parameter_5677" name="PGL_c_Km6PG" value="0.05"/>
          <Constant key="Parameter_5679" name="PGL_c_k" value="0.055"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Parameter_5675"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Parameter_5677"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Parameter_5678"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_6149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Parameter_5679"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="_6PGDH_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8382" name="_6PGDH_c_Vmax" value="10.6"/>
          <Constant key="Parameter_8383" name="_6PGDH_c_Keq" value="47"/>
          <Constant key="Parameter_8381" name="_6PGDH_c_Km6PG" value="0.0035"/>
          <Constant key="Parameter_8385" name="_6PGDH_c_KmNADP" value="0.001"/>
          <Constant key="Parameter_5676" name="_6PGDH_c_KmRul5P" value="0.03"/>
          <Constant key="Parameter_8384" name="_6PGDH_c_KmNADPH" value="0.0006"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Parameter_8383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Parameter_8381"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Parameter_8385"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Parameter_8384"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_5676"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Parameter_8382"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="PPI_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8439" name="PPI_c_Vmax" value="72"/>
          <Constant key="Parameter_8436" name="PPI_c_Keq" value="5.6"/>
          <Constant key="Parameter_8440" name="PPI_c_KmRul5P" value="1.4"/>
          <Constant key="Parameter_8438" name="PPI_c_KmRib5P" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Parameter_8436"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Parameter_8438"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Parameter_8440"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Parameter_8439"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="PPI_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8453" name="PPI_g_Vmax" value="72"/>
          <Constant key="Parameter_8454" name="PPI_g_Keq" value="5.6"/>
          <Constant key="Parameter_8455" name="PPI_g_KmRul5P" value="1.4"/>
          <Constant key="Parameter_8451" name="PPI_g_KmRib5P" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="Parameter_8454"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Parameter_8451"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Parameter_8455"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Parameter_8453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="GlcT_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8437" name="k1" value="250000"/>
          <Constant key="Parameter_4858" name="k2" value="250000"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_8437"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4858"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="GlcT_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7118" name="GlcT_c_Vmax" value="111.7"/>
          <Constant key="Parameter_7119" name="GlcT_c_KmGlc" value="1"/>
          <Constant key="Parameter_6809" name="GlcT_c_alpha" value="0.75"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Parameter_7119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Parameter_7118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Parameter_6809"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="PGL_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4859" name="PGL_g_Vmax" value="5"/>
          <Constant key="Parameter_7120" name="PGL_g_Keq" value="20000"/>
          <Constant key="Parameter_6808" name="PGL_g_Km6PGL" value="0.05"/>
          <Constant key="Parameter_7117" name="PGL_g_Km6PG" value="0.05"/>
          <Constant key="Parameter_4855" name="PGL_g_k" value="0.055"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Parameter_7120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Parameter_7117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Parameter_6808"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Parameter_4859"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Parameter_4855"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="TR_c" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7121" name="TR_c_Vmax" value="252"/>
          <Constant key="Parameter_6802" name="TR_c_Keq" value="434"/>
          <Constant key="Parameter_6833" name="TR_c_KmTS2" value="0.0069"/>
          <Constant key="Parameter_6834" name="TR_c_KmNADPH" value="0.00077"/>
          <Constant key="Parameter_6806" name="TR_c_KmTSH2" value="0.0018"/>
          <Constant key="Parameter_6805" name="TR_c_KmNADP" value="0.081"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Parameter_6802"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Parameter_6805"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Parameter_6834"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Parameter_6833"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="Parameter_6806"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Parameter_7121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="PGK_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6804" name="PGK_g_Vmax" value="2862"/>
          <Constant key="Parameter_6803" name="PGK_g_Keq" value="3377"/>
          <Constant key="Parameter_6200" name="PGK_g_Km13BPGA" value="0.003"/>
          <Constant key="Parameter_6810" name="PGK_g_KmADP" value="0.1"/>
          <Constant key="Parameter_6807" name="PGK_g_Km3PGA" value="1.62"/>
          <Constant key="Parameter_6201" name="PGK_g_KmATP" value="0.29"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Parameter_6803"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Parameter_6200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Parameter_6807"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Parameter_6810"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Parameter_6201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="Parameter_6804"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="G3PDH_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6202" name="G3PDH_g_Vmax" value="465"/>
          <Constant key="Parameter_6198" name="G3PDH_g_Keq" value="17085"/>
          <Constant key="Parameter_6199" name="G3PDH_g_KmDHAP" value="0.1"/>
          <Constant key="Parameter_6811" name="G3PDH_g_KmNADH" value="0.01"/>
          <Constant key="Parameter_4857" name="G3PDH_g_KmGly3P" value="2"/>
          <Constant key="Parameter_4856" name="G3PDH_g_KmNAD" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="Parameter_6198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Parameter_6199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Parameter_4857"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Parameter_4856"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Parameter_6811"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="Parameter_6202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="ATPu_c" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6197" name="ATPu_c_k" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="Parameter_6197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="GK_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6193" name="GK_g_Vmax" value="200"/>
          <Constant key="Parameter_8452" name="GK_g_Keq" value="0.000837"/>
          <Constant key="Parameter_6196" name="GK_g_KmGly3P" value="3.83"/>
          <Constant key="Parameter_8671" name="GK_g_KmADP" value="0.56"/>
          <Constant key="Parameter_6194" name="GK_g_KmGly" value="0.44"/>
          <Constant key="Parameter_6195" name="GK_g_KmATP" value="0.24"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Parameter_8452"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Parameter_8671"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Parameter_6195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Parameter_6194"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Parameter_6196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Parameter_6193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="ALD_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8668" name="ALD_g_Vmax" value="560"/>
          <Constant key="Parameter_8627" name="ALD_g_KmFru16BP" value="0.009"/>
          <Constant key="Parameter_8666" name="ALD_g_KiATP" value="0.68"/>
          <Constant key="Parameter_8665" name="ALD_g_KiADP" value="1.51"/>
          <Constant key="Parameter_8615" name="ALD_g_KiAMP" value="3.65"/>
          <Constant key="Parameter_8613" name="ALD_g_Keq" value="0.084"/>
          <Constant key="Parameter_8612" name="ALD_g_KmGA3P" value="0.067"/>
          <Constant key="Parameter_8667" name="ALD_g_KmDHAP" value="0.015"/>
          <Constant key="Parameter_8614" name="ALD_g_KiGA3P" value="0.098"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_8613"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Parameter_8665"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Parameter_8615"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_8666"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_8614"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Parameter_8667"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Parameter_8627"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Parameter_8612"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_8668"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="GAPDH_g" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8611" name="GAPDH_g_Vmax" value="720.9"/>
          <Constant key="Parameter_8616" name="GAPDH_g_Keq" value="0.066"/>
          <Constant key="Parameter_8617" name="GAPDH_g_KmGA3P" value="0.15"/>
          <Constant key="Parameter_8626" name="GAPDH_g_KmNAD" value="0.45"/>
          <Constant key="Parameter_8630" name="GAPDH_g_Km13BPGA" value="0.1"/>
          <Constant key="Parameter_8623" name="GAPDH_g_KmNADH" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_8616"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Parameter_8630"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Parameter_8617"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Parameter_8626"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_8623"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_8611"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="GPO_c" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8619" name="GPO_c_Vmax" value="368"/>
          <Constant key="Parameter_8624" name="GPO_c_KmGly3P" value="1.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Parameter_8624"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Parameter_8619"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol]" value="5.4549000000000003" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome]" value="0.24510000000000001" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[_2PGA_c]" value="328501756317240" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[DHAP_c]" value="7329955348418017" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[ATP_g]" value="35498442141637.797" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[DHAP_g]" value="1252132730147697.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[ADP_g]" value="224208455771924.44" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[Glc6P_g]" value="73801335013800" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[ADP_c]" value="4324725621916464.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[_3PGA_c]" value="328501756317240" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[NADPH_c]" value="12811568496372360" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[Fru6P_g]" value="73801335013800" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[Pi_g]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[default],Vector=Metabolites[O2_c]" value="602214076000000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[NADP_c]" value="328501756317240" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[ATP_c]" value="1122490501336009.4" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[NADP_g]" value="14760267002760.004" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[_6PG_g]" value="12427524885109.805" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[CO2_c]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[Rul5P_c]" value="1356120950428830.2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[_6PG_c]" value="276584681745350.78" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[Rul5P_g]" value="60933334240793.836" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[Glc6P_c]" value="1642508781586200" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[Rib5P_c]" value="32850175631724.008" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[_13BPGA_g]" value="73801335013800" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[Glc_c]" value="328501756317240" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[Rib5P_g]" value="1476026700276" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[Glc_g]" value="14760267002760.004" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[default],Vector=Metabolites[Glc_e]" value="3011070380000000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[NADPH_g]" value="575650413107640" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[Rib_g]" value="1476026700276" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[Pyr_c]" value="32850175631724008" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[default],Vector=Metabolites[Pyr_e]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[NAD_g]" value="295205340055200" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[Fru16BP_g]" value="1476026700276000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[GA3P_g]" value="369006675069000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[default],Vector=Metabolites[Gly_e]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[TSH2_c]" value="32850175631724.008" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[CO2_g]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[Gly3P_c]" value="9095132467443986" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[Gly3P_g]" value="1552318000819510" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[_6PGL_c]" value="261250219760462" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[TS2_c]" value="1215456498373788" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[_6PGL_g]" value="11738515621420.971" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[PEP_c]" value="3285017563172400" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[AMP_g]" value="625909122252038" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[_3PGA_g]" value="14760267002760.004" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[cytosol],Vector=Metabolites[AMP_c]" value="7364352373119887" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Compartments[glycosome],Vector=Metabolites[NADH_g]" value="295205340055200" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TPI_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TPI_g],ParameterGroup=Parameters,Parameter=TPI_g_Vmax" value="999.29999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TPI_g],ParameterGroup=Parameters,Parameter=TPI_g_Keq" value="0.045999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TPI_g],ParameterGroup=Parameters,Parameter=TPI_g_KmDHAP" value="1.2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TPI_g],ParameterGroup=Parameters,Parameter=TPI_g_KmGA3P" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c],ParameterGroup=Parameters,Parameter=PYK_c_Vmax" value="1020" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c],ParameterGroup=Parameters,Parameter=PYK_c_KmPEP" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c],ParameterGroup=Parameters,Parameter=PYK_c_KiATP" value="0.56999999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c],ParameterGroup=Parameters,Parameter=PYK_c_KiADP" value="0.64000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c],ParameterGroup=Parameters,Parameter=PYK_c_n" value="2.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c],ParameterGroup=Parameters,Parameter=PYK_c_KmADP" value="0.114" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c],ParameterGroup=Parameters,Parameter=PYK_c_Keq" value="10800" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c],ParameterGroup=Parameters,Parameter=PYK_c_KmPyr" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PYK_c],ParameterGroup=Parameters,Parameter=PYK_c_KmATP" value="15" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PFK_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PFK_g],ParameterGroup=Parameters,Parameter=PFK_g_Vmax" value="1708" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PFK_g],ParameterGroup=Parameters,Parameter=PFK_g_Ki1" value="15.800000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PFK_g],ParameterGroup=Parameters,Parameter=PFK_g_KmFru6P" value="0.999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PFK_g],ParameterGroup=Parameters,Parameter=PFK_g_KmATP" value="0.064799999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PFK_g],ParameterGroup=Parameters,Parameter=PFK_g_Keq" value="1035" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PFK_g],ParameterGroup=Parameters,Parameter=PFK_g_KsATP" value="0.039300000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PFK_g],ParameterGroup=Parameters,Parameter=PFK_g_KmADP" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PFK_g],ParameterGroup=Parameters,Parameter=PFK_g_Ki2" value="10.699999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_g],ParameterGroup=Parameters,Parameter=G6PDH_g_Vmax" value="8.4000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_g],ParameterGroup=Parameters,Parameter=G6PDH_g_Keq" value="5.0199999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_g],ParameterGroup=Parameters,Parameter=G6PDH_g_KmGlc6P" value="0.058000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_g],ParameterGroup=Parameters,Parameter=G6PDH_g_KmNADP" value="0.0094000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_g],ParameterGroup=Parameters,Parameter=G6PDH_g_Km6PGL" value="0.040000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_g],ParameterGroup=Parameters,Parameter=G6PDH_g_KmNADPH" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGAM_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGAM_c],ParameterGroup=Parameters,Parameter=PGAM_c_Vmax" value="225" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGAM_c],ParameterGroup=Parameters,Parameter=PGAM_c_Keq" value="0.17000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGAM_c],ParameterGroup=Parameters,Parameter=PGAM_c_Km3PGA" value="0.14999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGAM_c],ParameterGroup=Parameters,Parameter=PGAM_c_Km2PGA" value="0.16" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PyrT_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PyrT_c],ParameterGroup=Parameters,Parameter=PyrT_c_Vmax" value="230" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PyrT_c],ParameterGroup=Parameters,Parameter=PyrT_c_KmPyr" value="1.96" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_c],ParameterGroup=Parameters,Parameter=G6PDH_c_Vmax" value="8.4000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_c],ParameterGroup=Parameters,Parameter=G6PDH_c_Keq" value="5.0199999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_c],ParameterGroup=Parameters,Parameter=G6PDH_c_KmGlc6P" value="0.058000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_c],ParameterGroup=Parameters,Parameter=G6PDH_c_KmNADP" value="0.0094000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_c],ParameterGroup=Parameters,Parameter=G6PDH_c_Km6PGL" value="0.040000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PDH_c],ParameterGroup=Parameters,Parameter=G6PDH_c_KmNADPH" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ENO_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ENO_c],ParameterGroup=Parameters,Parameter=ENO_c_Vmax" value="598" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ENO_c],ParameterGroup=Parameters,Parameter=ENO_c_Keq" value="4.1699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ENO_c],ParameterGroup=Parameters,Parameter=ENO_c_Km2PGA" value="0.053999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ENO_c],ParameterGroup=Parameters,Parameter=ENO_c_KmPEP" value="0.23999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_g],ParameterGroup=Parameters,Parameter=HXK_g_Vmax" value="1774.6800000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_g],ParameterGroup=Parameters,Parameter=HXK_g_Keq" value="759" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_g],ParameterGroup=Parameters,Parameter=HXK_g_KmGlc" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_g],ParameterGroup=Parameters,Parameter=HXK_g_KmATP" value="0.11600000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_g],ParameterGroup=Parameters,Parameter=HXK_g_KmGlc6P" value="2.7000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_g],ParameterGroup=Parameters,Parameter=HXK_g_KmADP" value="0.126" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[RK_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[RK_g],ParameterGroup=Parameters,Parameter=RK_g_Vmax" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[RK_g],ParameterGroup=Parameters,Parameter=RK_g_Keq" value="0.0035999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[RK_g],ParameterGroup=Parameters,Parameter=RK_g_KmRib5P" value="0.39000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[RK_g],ParameterGroup=Parameters,Parameter=RK_g_KmADP" value="0.25" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[RK_g],ParameterGroup=Parameters,Parameter=RK_g_KmRib" value="0.51000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[RK_g],ParameterGroup=Parameters,Parameter=RK_g_KmATP" value="0.23999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_3PGAT_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_3PGAT_g],ParameterGroup=Parameters,Parameter=_3PGAT_g_k" value="250" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[NADPHu_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[NADPHu_c],ParameterGroup=Parameters,Parameter=NADPHu_c_k" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_c],ParameterGroup=Parameters,Parameter=HXK_c_Vmax" value="154.31999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_c],ParameterGroup=Parameters,Parameter=HXK_c_Keq" value="759" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_c],ParameterGroup=Parameters,Parameter=HXK_c_KmGlc" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_c],ParameterGroup=Parameters,Parameter=HXK_c_KmATP" value="0.11600000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_c],ParameterGroup=Parameters,Parameter=HXK_c_KmGlc6P" value="2.7000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[HXK_c],ParameterGroup=Parameters,Parameter=HXK_c_KmADP" value="0.126" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[NADPHu_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[NADPHu_g],ParameterGroup=Parameters,Parameter=NADPHu_g_k" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[AK_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[AK_c],ParameterGroup=Parameters,Parameter=AK_c_k1" value="480" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[AK_c],ParameterGroup=Parameters,Parameter=AK_c_k2" value="1000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PP_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PP_c],ParameterGroup=Parameters,Parameter=G6PP_c_Vmax" value="28" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PP_c],ParameterGroup=Parameters,Parameter=G6PP_c_Keq" value="263" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PP_c],ParameterGroup=Parameters,Parameter=G6PP_c_KmGlc6P" value="5.5999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G6PP_c],ParameterGroup=Parameters,Parameter=G6PP_c_KmGlc" value="5.5999999999999996" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_g],ParameterGroup=Parameters,Parameter=_6PGDH_g_Vmax" value="10.6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_g],ParameterGroup=Parameters,Parameter=_6PGDH_g_Keq" value="47" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_g],ParameterGroup=Parameters,Parameter=_6PGDH_g_Km6PG" value="0.0035000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_g],ParameterGroup=Parameters,Parameter=_6PGDH_g_KmNADP" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_g],ParameterGroup=Parameters,Parameter=_6PGDH_g_KmRul5P" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_g],ParameterGroup=Parameters,Parameter=_6PGDH_g_KmNADPH" value="0.00059999999999999995" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGI_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGI_g],ParameterGroup=Parameters,Parameter=PGI_g_Vmax" value="1305" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGI_g],ParameterGroup=Parameters,Parameter=PGI_g_KmGlc6P" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGI_g],ParameterGroup=Parameters,Parameter=PGI_g_Keq" value="0.45700000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGI_g],ParameterGroup=Parameters,Parameter=PGI_g_KmFru6P" value="0.12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGI_g],ParameterGroup=Parameters,Parameter=PGI_g_Ki6PG" value="0.14000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[AK_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[AK_g],ParameterGroup=Parameters,Parameter=AK_g_k1" value="480" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[AK_g],ParameterGroup=Parameters,Parameter=AK_g_k2" value="1000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TOX_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TOX_c],ParameterGroup=Parameters,Parameter=TOX_c_k" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GDA_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GDA_g],ParameterGroup=Parameters,Parameter=GDA_g_k" value="600" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_c],ParameterGroup=Parameters,Parameter=PGL_c_Vmax" value="28" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_c],ParameterGroup=Parameters,Parameter=PGL_c_Keq" value="20000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_c],ParameterGroup=Parameters,Parameter=PGL_c_Km6PGL" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_c],ParameterGroup=Parameters,Parameter=PGL_c_Km6PG" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_c],ParameterGroup=Parameters,Parameter=PGL_c_k" value="0.055" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_c],ParameterGroup=Parameters,Parameter=_6PGDH_c_Vmax" value="10.6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_c],ParameterGroup=Parameters,Parameter=_6PGDH_c_Keq" value="47" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_c],ParameterGroup=Parameters,Parameter=_6PGDH_c_Km6PG" value="0.0035000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_c],ParameterGroup=Parameters,Parameter=_6PGDH_c_KmNADP" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_c],ParameterGroup=Parameters,Parameter=_6PGDH_c_KmRul5P" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[_6PGDH_c],ParameterGroup=Parameters,Parameter=_6PGDH_c_KmNADPH" value="0.00059999999999999995" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_c],ParameterGroup=Parameters,Parameter=PPI_c_Vmax" value="72" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_c],ParameterGroup=Parameters,Parameter=PPI_c_Keq" value="5.5999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_c],ParameterGroup=Parameters,Parameter=PPI_c_KmRul5P" value="1.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_c],ParameterGroup=Parameters,Parameter=PPI_c_KmRib5P" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_g],ParameterGroup=Parameters,Parameter=PPI_g_Vmax" value="72" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_g],ParameterGroup=Parameters,Parameter=PPI_g_Keq" value="5.5999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_g],ParameterGroup=Parameters,Parameter=PPI_g_KmRul5P" value="1.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PPI_g],ParameterGroup=Parameters,Parameter=PPI_g_KmRib5P" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GlcT_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GlcT_g],ParameterGroup=Parameters,Parameter=k1" value="250000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GlcT_g],ParameterGroup=Parameters,Parameter=k2" value="250000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GlcT_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GlcT_c],ParameterGroup=Parameters,Parameter=GlcT_c_Vmax" value="111.7" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GlcT_c],ParameterGroup=Parameters,Parameter=GlcT_c_KmGlc" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GlcT_c],ParameterGroup=Parameters,Parameter=GlcT_c_alpha" value="0.75" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_g],ParameterGroup=Parameters,Parameter=PGL_g_Vmax" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_g],ParameterGroup=Parameters,Parameter=PGL_g_Keq" value="20000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_g],ParameterGroup=Parameters,Parameter=PGL_g_Km6PGL" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_g],ParameterGroup=Parameters,Parameter=PGL_g_Km6PG" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGL_g],ParameterGroup=Parameters,Parameter=PGL_g_k" value="0.055" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TR_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TR_c],ParameterGroup=Parameters,Parameter=TR_c_Vmax" value="252" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TR_c],ParameterGroup=Parameters,Parameter=TR_c_Keq" value="434" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TR_c],ParameterGroup=Parameters,Parameter=TR_c_KmTS2" value="0.0068999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TR_c],ParameterGroup=Parameters,Parameter=TR_c_KmNADPH" value="0.00076999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TR_c],ParameterGroup=Parameters,Parameter=TR_c_KmTSH2" value="0.0018" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[TR_c],ParameterGroup=Parameters,Parameter=TR_c_KmNADP" value="0.081000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGK_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGK_g],ParameterGroup=Parameters,Parameter=PGK_g_Vmax" value="2862" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGK_g],ParameterGroup=Parameters,Parameter=PGK_g_Keq" value="3377" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGK_g],ParameterGroup=Parameters,Parameter=PGK_g_Km13BPGA" value="0.0030000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGK_g],ParameterGroup=Parameters,Parameter=PGK_g_KmADP" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGK_g],ParameterGroup=Parameters,Parameter=PGK_g_Km3PGA" value="1.6200000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[PGK_g],ParameterGroup=Parameters,Parameter=PGK_g_KmATP" value="0.28999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G3PDH_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G3PDH_g],ParameterGroup=Parameters,Parameter=G3PDH_g_Vmax" value="465" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G3PDH_g],ParameterGroup=Parameters,Parameter=G3PDH_g_Keq" value="17085" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G3PDH_g],ParameterGroup=Parameters,Parameter=G3PDH_g_KmDHAP" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G3PDH_g],ParameterGroup=Parameters,Parameter=G3PDH_g_KmNADH" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G3PDH_g],ParameterGroup=Parameters,Parameter=G3PDH_g_KmGly3P" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[G3PDH_g],ParameterGroup=Parameters,Parameter=G3PDH_g_KmNAD" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ATPu_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ATPu_c],ParameterGroup=Parameters,Parameter=ATPu_c_k" value="50" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GK_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GK_g],ParameterGroup=Parameters,Parameter=GK_g_Vmax" value="200" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GK_g],ParameterGroup=Parameters,Parameter=GK_g_Keq" value="0.00083699999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GK_g],ParameterGroup=Parameters,Parameter=GK_g_KmGly3P" value="3.8300000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GK_g],ParameterGroup=Parameters,Parameter=GK_g_KmADP" value="0.56000000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GK_g],ParameterGroup=Parameters,Parameter=GK_g_KmGly" value="0.44" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GK_g],ParameterGroup=Parameters,Parameter=GK_g_KmATP" value="0.23999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g],ParameterGroup=Parameters,Parameter=ALD_g_Vmax" value="560" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g],ParameterGroup=Parameters,Parameter=ALD_g_KmFru16BP" value="0.0089999999999999993" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g],ParameterGroup=Parameters,Parameter=ALD_g_KiATP" value="0.68000000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g],ParameterGroup=Parameters,Parameter=ALD_g_KiADP" value="1.51" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g],ParameterGroup=Parameters,Parameter=ALD_g_KiAMP" value="3.6499999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g],ParameterGroup=Parameters,Parameter=ALD_g_Keq" value="0.084000000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g],ParameterGroup=Parameters,Parameter=ALD_g_KmGA3P" value="0.067000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g],ParameterGroup=Parameters,Parameter=ALD_g_KmDHAP" value="0.014999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[ALD_g],ParameterGroup=Parameters,Parameter=ALD_g_KiGA3P" value="0.098000000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GAPDH_g]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GAPDH_g],ParameterGroup=Parameters,Parameter=GAPDH_g_Vmax" value="720.89999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GAPDH_g],ParameterGroup=Parameters,Parameter=GAPDH_g_Keq" value="0.066000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GAPDH_g],ParameterGroup=Parameters,Parameter=GAPDH_g_KmGA3P" value="0.14999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GAPDH_g],ParameterGroup=Parameters,Parameter=GAPDH_g_KmNAD" value="0.45000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GAPDH_g],ParameterGroup=Parameters,Parameter=GAPDH_g_Km13BPGA" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GAPDH_g],ParameterGroup=Parameters,Parameter=GAPDH_g_KmNADH" value="0.02" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GPO_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GPO_c],ParameterGroup=Parameters,Parameter=GPO_c_Vmax" value="368" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL C (with glucosomal ribokinase)_1,Vector=Reactions[GPO_c],ParameterGroup=Parameters,Parameter=GPO_c_KmGly3P" value="1.7" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 224208455771924.44 4324725621916464.5 12811568496372360 1252132730147697.8 328501756317240 14760267002760.004 369006675069000 73801335013800 328501756317240 1476026700276 1552318000819510 32850175631724008 32850175631724.008 261250219760462 1356120950428830.2 12427524885109.805 9095132467443986 73801335013800 73801335013800 328501756317240 1642508781586200 11738515621420.971 295205340055200 14760267002760.004 3285017563172400 276584681745350.78 60933334240793.836 14760267002760.004 1122490501336009.4 625909122252038 35498442141637.797 1215456498373788 1476026700276000 295205340055200 7364352373119887 7329955348418017 328501756317240 575650413107640 0 32850175631724.008 0 1476026700276 0 602214076000000 3011070380000000 0 0 5.4549000000000003 0.24510000000000001 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="true" updateModel="true">
      <Report reference="Report_10" target="ssoutK.txt" append="0" confirmOverwrite="0"/>
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
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_15" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_4" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_3" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_2" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
  <SBMLReference file="BIOMD0000000510_url.xml">
    <SBMLMap SBMLid="ADP_c" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="ADP_g" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="AK_c" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="AK_g" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="ALD_g" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="AMP_c" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="AMP_g" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="ATP_c" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="ATP_g" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="ATPu_c" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="CO2_c" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="CO2_g" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="DHAP_c" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="DHAP_g" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="ENO_c" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Fru16BP_g" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="Fru6P_g" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="G3PDH_g" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="G6PDH_c" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="G6PDH_g" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="G6PP_c" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="GA3P_g" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="GAPDH_g" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="GDA_g" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="GK_g" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="GPO_c" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="Glc6P_c" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Glc6P_g" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="GlcT_c" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="GlcT_g" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Glc_c" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Glc_e" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Glc_g" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Gly3P_c" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="Gly3P_g" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Gly_e" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="HXK_c" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="HXK_g" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="NADH_g" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="NADPH_c" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="NADPH_g" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="NADPHu_c" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="NADPHu_g" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="NADP_c" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="NADP_g" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="NAD_g" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="O2_c" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="PEP_c" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="PFK_g" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="PGAM_c" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="PGI_g" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="PGK_g" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="PGL_c" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="PGL_g" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="PPI_c" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="PPI_g" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="PYK_c" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Pi_g" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="PyrT_c" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Pyr_c" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Pyr_e" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="RK_g" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Rib5P_c" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Rib5P_g" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Rib_g" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="Rul5P_c" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Rul5P_g" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="TOX_c" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="TPI_g" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="TR_c" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="TS2_c" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="TSH2_c" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="_13BPGA_g" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="_2PGA_c" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="_3PGAT_g" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="_3PGA_c" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="_3PGA_g" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="_6PGDH_c" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="_6PGDH_g" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="_6PGL_c" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="_6PGL_g" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="_6PG_c" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="_6PG_g" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="cytosol" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="glycosome" COPASIkey="Compartment_1"/>
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
