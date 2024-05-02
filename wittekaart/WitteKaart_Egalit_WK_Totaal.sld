<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>default_point</Name>
    <UserStyle>
      <!-- Styles can have names, titles and abstracts -->
      <Title>Default Point</Title>
      <Abstract>A sample style that draws a point</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering points -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Ziekenhuis</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Ziekenhuis</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Ziekenhuis.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Apothekers</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Apothekers</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Apothekers.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Ambulancezorg</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Ambulancezorg</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-RAV.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Gehandicaptenzorg</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Gehandicaptenzorg</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Gehandicaptenzorg.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>GGD</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>GGD</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-GGD.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>GGZ</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>GGZ</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-GGZ.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Huisartsen</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Huisartsen</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Huisartsen.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Huisartsenpost</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Huisartsenpost</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Huisartsen.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Jeugdzorg</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Jeugdzorg</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Jeugdzorg.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Medisch behandelcentrum</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Medisch behandelcentrum</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-rest.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Nederlandse Rode Kruis</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Nederlandse Rode Kruis</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-NRK.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Overig</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Overig</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-rest.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Revalidatiecentrum</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Revalidatiecentrum</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Revalidatiecentra.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Thuiszorg</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Thuiszorg</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Thuiszorg.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Verloskundigen</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Verloskundigen</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Verloskunde.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Verpleegzorg</Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:Not>
                  <ogc:Or>
                    <ogc:PropertyIsNull>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                    </ogc:PropertyIsNull>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>sector</ogc:PropertyName>
                      <ogc:Literal></ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                </ogc:Not>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>sector</ogc:PropertyName>
                  <ogc:Literal>Verpleegzorg</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="WK-Verpleging.png"/>
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
