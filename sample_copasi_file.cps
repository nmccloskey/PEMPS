<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.38 (Build 268) (http://www.copasi.org) at 2023-02-27T17:44:31Z -->
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
    <Function key="Function_40" name="Function for GND_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        GND1*kcat_GND1*P6G*NADP/(Kp6g_GND1*Knadp_GND1)/((1+P6G/Kp6g_GND1+Ru5P/Kru5p_GND1)*(1+NADP/Knadp_GND1+NADPH/Knadph_GND1))+GND2*kcat_GND2*P6G*NADP/((1+P6G/Kp6g_GND2+Ru5P/Kru5p_GND2)*(1+NADP/Knadp_GND2+NADPH/Knadph_GND2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="GND1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_263" name="GND2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_262" name="Knadp_GND1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="Knadp_GND2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="Knadph_GND1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="Knadph_GND2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="Kp6g_GND1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="Kp6g_GND2" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="Kru5p_GND1" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="Kru5p_GND2" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="NADP" order="10" role="substrate"/>
        <ParameterDescription key="FunctionParameter_271" name="NADPH" order="11" role="product"/>
        <ParameterDescription key="FunctionParameter_272" name="P6G" order="12" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="Ru5P" order="13" role="product"/>
        <ParameterDescription key="FunctionParameter_274" name="kcat_GND1" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="kcat_GND2" order="15" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for RKI_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        RKI1*kcat*(Ru5P-R5P/Keq)/Kru5p/(1+Ru5P/Kru5p+R5P/Kr5p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="Kr5p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="Kru5p" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="R5P" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_287" name="RKI1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_286" name="Ru5P" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="kcat" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for RPE_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        RPE1*kcat*(Ru5P-X5P/Keq)/Kru5p/(1+Ru5P/Kru5p+X5P/Kx5p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="Kru5p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="Kx5p" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="RPE1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="Ru5P" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="X5P" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_284" name="kcat" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for SOL_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        SOL3*kcat*G6L/Kg6l/(1+G6L/Kg6l+P6G/Kp6g)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="G6L" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="Kg6l" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="Kp6g" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="P6G" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_292" name="SOL3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="kcat" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for TAL_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        TAL1*kcat_TAL1*(GAP*S7P-F6P*E4P/Keq)/(Kgap_TAL1*Ks7p_TAL1)/((1+GAP/Kgap_TAL1+F6P/Kf6p_TAL1)*(1+S7P/Ks7p_TAL1+E4P/Ke4p_TAL1))+NQM1*kcat_NQM1*(GAP*S7P-F6P*E4P/Keq)/(Kgap_NQM1*Ks7p_NQM1)/((1+GAP/Kgap_NQM1+F6P/Kf6p_NQM1)*(1+S7P/Ks7p_NQM1+E4P/Ke4p_NQM1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="E4P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_300" name="F6P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_299" name="GAP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="Ke4p_NQM1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="Ke4p_TAL1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="Keq" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="Kf6p_NQM1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="Kf6p_TAL1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="Kgap_NQM1" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="Kgap_TAL1" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="Ks7p_NQM1" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="Ks7p_TAL1" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="NQM1" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_309" name="S7P" order="13" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="TAL1" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_311" name="kcat_NQM1" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="kcat_TAL1" order="16" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for TKL (E4P:F6P)_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        TKL1*kcat*(X5P*E4P-GAP*F6P/Keq)/(Kx5p_TAL*Ke4p_TAL)/((1+X5P/Kx5p_TAL+GAP/Kgap_TAL)*(1+E4P/Ke4p_TAL+F6P/Kf6p_TAL+R5P/Kr5p_TAL+S7P/Ks7p_TAL))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="E4P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="F6P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_327" name="GAP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_326" name="Ke4p_TAL" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="Kf6p_TAL" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="Kgap_TAL" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="Kr5p_TAL" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="Ks7p_TAL" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="Kx5p_TAL" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="R5P" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_318" name="S7P" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="TKL1" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="X5P" order="13" role="substrate"/>
        <ParameterDescription key="FunctionParameter_315" name="kcat" order="14" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for TKL (R5P:S7P)_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        TKL1*kcat*(X5P*R5P-GAP*S7P/Keq)/(Kx5p_TAL*Kr5p_TAL)/((1+X5P/Kx5p_TAL+GAP/Kgap_TAL)*(1+E4P/Ke4p_TAL+F6P/Kf6p_TAL+R5P/Kr5p_TAL+S7P/Ks7p_TAL))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="E4P" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_341" name="F6P" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="GAP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_339" name="Ke4p_TAL" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="Kf6p_TAL" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="Kgap_TAL" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="Kr5p_TAL" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="Ks7p_TAL" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="Kx5p_TAL" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="R5P" order="10" role="substrate"/>
        <ParameterDescription key="FunctionParameter_331" name="S7P" order="11" role="product"/>
        <ParameterDescription key="FunctionParameter_330" name="TKL1" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_313" name="X5P" order="13" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="kcat" order="14" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for ZWF_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ZWF1*kcat*G6P*NADP/(Kg6p*Knadp)/((1+G6P/Kg6p+G6L/Kg6l)*(1+NADP/Knadp+NADPH/Knadph))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_357" name="G6L" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_356" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_355" name="Kg6l" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="Kg6p" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="Knadp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="Knadph" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="NADP" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="NADPH" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_349" name="ZWF1" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="kcat" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Messiha2013 - Pentose phosphate pathway model_1" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
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
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/4932"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/doi/10.7287/peerj.preprints.146v2"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-11-09T12:00:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
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
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>edward.kent@manchester.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Ed</vCard:Family>
                <vCard:Given>Kent</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Manchester</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>kieran.smallbone@manchester.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Smallbone</vCard:Family>
                <vCard:Given>Kieran</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Manchester</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T16:07:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:encodes>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006098"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/rn00030"/>
      </rdf:Bag>
    </CopasiMT:encodes>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1311290000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000502"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Messiha2013 - Pentose phosphate pathway model</div>
    <div class="dc:description">
      <p>This model describes the dynamic behaviour of the pentose phosphate pathway with the inclusion of various enzymes involved in the pathway. The model's predictions are compared with experimental observations of transient metabolite concentrations following a glucose pulse.</p>
    </div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/doi/10.7287/peerj.preprints.146v2" title="Access to this publication">Enzyme characterisation and kinetic modelling of pentose phosphate pathway in yeast.</a>
      </div>
      <div class="bibo:authorList">Hanan L. Messiha, Edward Kent, Naglis Malys, Kathleen M. Carroll, Pedro Mendes, Kieran Smallbone</div>
      <div class="bibo:Journal">PeerJ PrePrints 1:e146v2</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>We present the quantification and kinetic characterisation of the enzymes of the pentose phosphate pathway in Saccharomyces cerevisiae. The data are combined into a mathematical model that describes the dynamics of this system and allows for the predicting changes in metabolite concentrations and fluxes in response to perturbations. We use the model to study the response of yeast to a glucose pulse. We then combine the model with an existing glycolysis one to study the effect of oxidative stress on carbohydrate metabolism. The combination of these two models was made possible by the standardized enzyme kinetic experiments carried out in both studies. This work demonstrates the feasibility of constructing larger network models by merging smaller pathway models.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on        <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
            and identified
by:        <a href="http://identifiers.org/biomodels.db/BIOMD0000000502">BIOMD0000000502</a>
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
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000290" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005737" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="E4P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16897" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00279" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="G6L" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:57955" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C01236" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="NADPH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:57783" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00005" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="P6G" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:58759" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00345" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="R5P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18189" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C03736" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Ru5P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:58121" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00199" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="S7P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:57483" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C05382" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="X5P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:57737" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00231" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="NADP" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:58349" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00006" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[sum_NADP],Reference=Value>-&lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[NADPH],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="G6P" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:14314" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00092" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.90000000000000002+if(&lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Reference=Time> ge 0,44.100000000000001*&lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Reference=Time>/(48+&lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Reference=Time>+0.45000000000000001*&lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Reference=Time>^2),0)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="F6P" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:57579" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00085" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="GAP" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:58027" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00661" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="GND1" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38720" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.genes/sce:YHR183W" />
        <rdf:li rdf:resource="http://identifiers.org/sgd/S000001226" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="GND2" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P53319" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.genes/sce:YGR256W" />
        <rdf:li rdf:resource="http://identifiers.org/sgd/S000003488" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="NQM1" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P53228" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.genes/sce:YGR043C" />
        <rdf:li rdf:resource="http://identifiers.org/sgd/S000003275" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="RKI1" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q12189" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.genes/sce:YOR095C" />
        <rdf:li rdf:resource="http://identifiers.org/sgd/S000005621" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="RPE1" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P46969" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.genes/sce:YJL121C" />
        <rdf:li rdf:resource="http://identifiers.org/sgd/S000003657" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="SOL3" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38858" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.genes/sce:YHR163W" />
        <rdf:li rdf:resource="http://identifiers.org/sgd/S000001206" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="TAL1" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P15019" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.genes/sce:YLR354C" />
        <rdf:li rdf:resource="http://identifiers.org/sgd/S000004346" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="TKL1" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P23254" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.genes/sce:YPR074C" />
        <rdf:li rdf:resource="http://identifiers.org/sgd/S000006278" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="ZWF1" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P11412" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.genes/sce:YNL241C" />
        <rdf:li rdf:resource="http://identifiers.org/sgd/S000005185" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="sum_NADP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Kx5p_TAL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Ke4p_TAL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Kr5p_TAL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Kgap_TAL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Kf6p_TAL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Ks7p_TAL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="GND" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.44" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6832" name="kcat_GND1" value="28"/>
          <Constant key="Parameter_6835" name="Kp6g_GND1" value="373.685"/>
          <Constant key="Parameter_5422" name="Knadp_GND1" value="194.806"/>
          <Constant key="Parameter_5423" name="Kru5p_GND1" value="1491.43"/>
          <Constant key="Parameter_5425" name="Knadph_GND1" value="1131.69"/>
          <Constant key="Parameter_5421" name="kcat_GND2" value="27.3"/>
          <Constant key="Parameter_5424" name="Kp6g_GND2" value="650.771"/>
          <Constant key="Parameter_4590" name="Knadp_GND2" value="1332.62"/>
          <Constant key="Parameter_4591" name="Kru5p_GND2" value="591.357"/>
          <Constant key="Parameter_4594" name="Knadph_GND2" value="763.138"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_5422"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Parameter_4590"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_5425"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4594"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_6835"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_5424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Parameter_5423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4591"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_6832"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_5421"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="RKI" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.3.1.6" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4589" name="kcat" value="335"/>
          <Constant key="Parameter_4593" name="Kru5p" value="45.2526"/>
          <Constant key="Parameter_4592" name="Kr5p" value="27090.3"/>
          <Constant key="Parameter_6838" name="Keq" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_6838"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_4592"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_4593"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Parameter_4589"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="RPE" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.1.3.1" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6839" name="kcat" value="4020"/>
          <Constant key="Parameter_6842" name="Kru5p" value="80917.6"/>
          <Constant key="Parameter_6837" name="Kx5p" value="52668.1"/>
          <Constant key="Parameter_6841" name="Keq" value="1.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_6841"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_6842"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_6837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_6839"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="SOL" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.1.1.31" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6840" name="kcat" value="4.3"/>
          <Constant key="Parameter_4562" name="Kg6l" value="107.562"/>
          <Constant key="Parameter_4563" name="Kp6g" value="10836.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_4562"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_4563"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_6840"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="TAL" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.2.1.2" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4569" name="kcat_TAL1" value="0.694"/>
          <Constant key="Parameter_4561" name="Kgap_TAL1" value="0.272"/>
          <Constant key="Parameter_4567" name="Ks7p_TAL1" value="0.786"/>
          <Constant key="Parameter_4568" name="Kf6p_TAL1" value="1.44"/>
          <Constant key="Parameter_4566" name="Ke4p_TAL1" value="2403.94"/>
          <Constant key="Parameter_4565" name="kcat_NQM1" value="0.694"/>
          <Constant key="Parameter_4564" name="Kgap_NQM1" value="1965.3"/>
          <Constant key="Parameter_7422" name="Ks7p_NQM1" value="5288.95"/>
          <Constant key="Parameter_7423" name="Kf6p_NQM1" value="12869.9"/>
          <Constant key="Parameter_7426" name="Ke4p_NQM1" value="1975.57"/>
          <Constant key="Parameter_7421" name="Keq" value="1.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Parameter_7426"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Parameter_4566"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_7421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_7423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_4568"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_4564"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Parameter_4561"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_7422"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Parameter_4567"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_4565"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_4569"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="TKL (E4P:F6P)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.2.1.1" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7425" name="kcat" value="47.1"/>
          <Constant key="Parameter_7424" name="Keq" value="10"/>
          <Constant key="Parameter_5941" name="Ke4p_TAL" value="3.9186"/>
          <Constant key="Parameter_5942" name="Kf6p_TAL" value="18063.5"/>
          <Constant key="Parameter_5944" name="Kgap_TAL" value="667.744"/>
          <Constant key="Parameter_5940" name="Kr5p_TAL" value="338.683"/>
          <Constant key="Parameter_5943" name="Ks7p_TAL" value="2476.31"/>
          <Constant key="Parameter_6425" name="Kx5p_TAL" value="1.35253"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Parameter_7424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Parameter_7425"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="TKL (R5P:S7P)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.2.1.1" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6426" name="kcat" value="40.5"/>
          <Constant key="Parameter_6428" name="Keq" value="1.2"/>
          <Constant key="Parameter_6424" name="Ke4p_TAL" value="3.9186"/>
          <Constant key="Parameter_6427" name="Kf6p_TAL" value="18063.5"/>
          <Constant key="Parameter_7260" name="Kgap_TAL" value="667.744"/>
          <Constant key="Parameter_7261" name="Kr5p_TAL" value="338.683"/>
          <Constant key="Parameter_7263" name="Ks7p_TAL" value="2476.31"/>
          <Constant key="Parameter_7259" name="Kx5p_TAL" value="1.35253"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Parameter_6428"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_6426"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="ZWF" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.49" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7262" name="kcat" value="189"/>
          <Constant key="Parameter_4841" name="Kg6p" value="1.32849"/>
          <Constant key="Parameter_4842" name="Knadp" value="2.34993"/>
          <Constant key="Parameter_4844" name="Kg6l" value="3813.35"/>
          <Constant key="Parameter_4840" name="Knadph" value="323.023"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_4844"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Parameter_4841"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_4842"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Parameter_4840"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Parameter_7262"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="NADPH oxidase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4843" name="k1" value="0.683475"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4843"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="E4P sink" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6692" name="k1" value="0.808742"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_6692"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R5P sink" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000176" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6693" name="k1" value="0.00877294"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_6693"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
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
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1" value="1100000" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[E4P]" value="1.2321166144808102e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[G6L]" value="1.1763226893879231e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[NADPH]" value="2.1258250895956722e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[P6G]" value="3.3268373202807045e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[R5P]" value="7.2058225546499855e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[Ru5P]" value="2.0036346605471439e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[S7P]" value="1.0077500086942056e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[X5P]" value="1.9015739322724082e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[NADP]" value="1.6293155337808013e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[G6P]" value="5.4204632009110625e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[F6P]" value="1.9571957470000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[GAP]" value="4.0348343092000006e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[GND1]" value="7.828782988e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[GND2]" value="1.806642228e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[NQM1]" value="1.204428152e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[RKI1]" value="3.0110703800000004e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[RPE1]" value="1.806642228e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[SOL3]" value="1.7825536649600002e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[TAL1]" value="8.6718826944e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[TKL1]" value="2.7400740458000001e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Compartments[cell],Vector=Metabolites[ZWF1]" value="1.204428152e+19" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[sum_NADP]" value="0.62355577078481861" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kx5p_TAL]" value="1.3525253032864604" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Ke4p_TAL]" value="3.9186024780170445" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kr5p_TAL]" value="338.6828258464439" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kgap_TAL]" value="667.74393917459406" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kf6p_TAL]" value="18063.450117086777" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Ks7p_TAL]" value="2476.3116344691175" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=kcat_GND1" value="28" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=Kp6g_GND1" value="373.685" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=Knadp_GND1" value="194.80600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=Kru5p_GND1" value="1491.4300000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=Knadph_GND1" value="1131.6900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=kcat_GND2" value="27.300000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=Kp6g_GND2" value="650.77099999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=Knadp_GND2" value="1332.6199999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=Kru5p_GND2" value="591.35699999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[GND],ParameterGroup=Parameters,Parameter=Knadph_GND2" value="763.13800000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RKI],ParameterGroup=Parameters,Parameter=kcat" value="335" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RKI],ParameterGroup=Parameters,Parameter=Kru5p" value="45.252600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RKI],ParameterGroup=Parameters,Parameter=Kr5p" value="27090.299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RKI],ParameterGroup=Parameters,Parameter=Keq" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RPE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RPE],ParameterGroup=Parameters,Parameter=kcat" value="4020" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RPE],ParameterGroup=Parameters,Parameter=Kru5p" value="80917.600000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RPE],ParameterGroup=Parameters,Parameter=Kx5p" value="52668.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[RPE],ParameterGroup=Parameters,Parameter=Keq" value="1.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[SOL]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[SOL],ParameterGroup=Parameters,Parameter=kcat" value="4.2999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[SOL],ParameterGroup=Parameters,Parameter=Kg6l" value="107.562" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[SOL],ParameterGroup=Parameters,Parameter=Kp6g" value="10836.6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=kcat_TAL1" value="0.69399999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=Kgap_TAL1" value="0.27200000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=Ks7p_TAL1" value="0.78600000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=Kf6p_TAL1" value="1.4399999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=Ke4p_TAL1" value="2403.9400000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=kcat_NQM1" value="0.69399999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=Kgap_NQM1" value="1965.3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=Ks7p_NQM1" value="5288.9499999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=Kf6p_NQM1" value="12869.9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=Ke4p_NQM1" value="1975.5699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TAL],ParameterGroup=Parameters,Parameter=Keq" value="1.05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (E4P:F6P)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (E4P:F6P)],ParameterGroup=Parameters,Parameter=kcat" value="47.100000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (E4P:F6P)],ParameterGroup=Parameters,Parameter=Keq" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (E4P:F6P)],ParameterGroup=Parameters,Parameter=Ke4p_TAL" value="3.9186024780170445" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Ke4p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (E4P:F6P)],ParameterGroup=Parameters,Parameter=Kf6p_TAL" value="18063.450117086777" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kf6p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (E4P:F6P)],ParameterGroup=Parameters,Parameter=Kgap_TAL" value="667.74393917459406" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kgap_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (E4P:F6P)],ParameterGroup=Parameters,Parameter=Kr5p_TAL" value="338.6828258464439" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kr5p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (E4P:F6P)],ParameterGroup=Parameters,Parameter=Ks7p_TAL" value="2476.3116344691175" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Ks7p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (E4P:F6P)],ParameterGroup=Parameters,Parameter=Kx5p_TAL" value="1.3525253032864604" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kx5p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (R5P:S7P)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (R5P:S7P)],ParameterGroup=Parameters,Parameter=kcat" value="40.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (R5P:S7P)],ParameterGroup=Parameters,Parameter=Keq" value="1.2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (R5P:S7P)],ParameterGroup=Parameters,Parameter=Ke4p_TAL" value="3.9186024780170445" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Ke4p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (R5P:S7P)],ParameterGroup=Parameters,Parameter=Kf6p_TAL" value="18063.450117086777" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kf6p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (R5P:S7P)],ParameterGroup=Parameters,Parameter=Kgap_TAL" value="667.74393917459406" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kgap_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (R5P:S7P)],ParameterGroup=Parameters,Parameter=Kr5p_TAL" value="338.6828258464439" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kr5p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (R5P:S7P)],ParameterGroup=Parameters,Parameter=Ks7p_TAL" value="2476.3116344691175" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Ks7p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[TKL (R5P:S7P)],ParameterGroup=Parameters,Parameter=Kx5p_TAL" value="1.3525253032864604" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Values[Kx5p_TAL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[ZWF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[ZWF],ParameterGroup=Parameters,Parameter=kcat" value="189" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[ZWF],ParameterGroup=Parameters,Parameter=Kg6p" value="1.3284899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[ZWF],ParameterGroup=Parameters,Parameter=Knadp" value="2.3499300000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[ZWF],ParameterGroup=Parameters,Parameter=Kg6l" value="3813.3499999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[ZWF],ParameterGroup=Parameters,Parameter=Knadph" value="323.02300000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[NADPH oxidase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[NADPH oxidase],ParameterGroup=Parameters,Parameter=k1" value="0.68347500000000005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[E4P sink]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[E4P sink],ParameterGroup=Parameters,Parameter=k1" value="0.80874199999999996" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[R5P sink]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Messiha2013 - Pentose phosphate pathway model_1,Vector=Reactions[R5P sink],ParameterGroup=Parameters,Parameter=k1" value="0.0087729399999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
    </StateTemplate>
    <InitialState type="initialState">
      1100000 1.2321166144808102e+19 2.1258250895956722e+20 7.2058225546499855e+21 2.0036346605471439e+21 1.9015739322724082e+19 1.1763226893879231e+24 1.0077500086942056e+21 3.3268373202807045e+21 1.6293155337808013e+20 5.4204632009110625e+20 1.9571957470000002e+20 4.0348343092000006e+19 7.828782988e+18 1.806642228e+18 1.204428152e+19 3.0110703800000004e+19 1.806642228e+19 1.7825536649600002e+19 8.6718826944e+19 2.7400740458000001e+20 1.204428152e+19 1 0.62355577078481861 1.3525253032864604 3.9186024780170445 338.6828258464439 667.74393917459406 18063.450117086777 2476.3116344691175 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="0" confirmOverwrite="0"/>
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
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
  <SBMLReference file="BIOMD0000000502_url (1).xml">
    <SBMLMap SBMLid="E4P" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="E4P_sink" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="F6P" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="G6L" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="G6P" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="GAP" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="GND" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="GND1" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="GND2" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="Ke4p_TAL" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Kf6p_TAL" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Kgap_TAL" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Kr5p_TAL" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Ks7p_TAL" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Kx5p_TAL" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="NADP" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="NADPH" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="NADPH_oxidase" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="NQM1" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="P6G" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="R5P" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="R5P_sink" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="RKI" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="RKI1" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="RPE" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="RPE1" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Ru5P" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="S7P" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="SOL" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="SOL3" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="TAL" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="TAL1" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="TKL1" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="TKL_E4P" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="TKL_R5P" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="X5P" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="ZWF" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="ZWF1" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="sum_NADP" COPASIkey="ModelValue_0"/>
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
  </ListOfUnitDefinitions>
</COPASI>
