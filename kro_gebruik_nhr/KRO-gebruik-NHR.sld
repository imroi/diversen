<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
    <NamedLayer>
        <se:Name>gebruik</se:Name>
        <UserStyle>
            <se:Name>gebruik</se:Name>
            <se:FeatureTypeStyle>
                <se:Rule>
                    <se:Name>Agrarisch algemeen</se:Name>
                    <se:Description>
                        <se:Title>Agrarisch algemeen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>00</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR01.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Agrarisch: teelt en fokken</se:Name>
                    <se:Description>
                        <se:Title>Agrarisch: teelt en fokken</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>01</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR01.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Agrarisch: bosbouw</se:Name>
                    <se:Description>
                        <se:Title>Agrarisch: bosbouw</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>02</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR02.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Visserij en viskwekerij</se:Name>
                    <se:Description>
                        <se:Title>Visserij en viskwekerij</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>03</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR03.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Winning aardolie/aardgas</se:Name>
                    <se:Description>
                        <se:Title>Winning aardolie/aardgas</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>06</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR06.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Winning delfstoffen</se:Name>
                    <se:Description>
                        <se:Title>Winning delfstoffen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>08</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR08.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Dienstverlening winning delfstoffen</se:Name>
                    <se:Description>
                        <se:Title>Dienstverlening winning delfstoffen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>09</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR08.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: vervaardiging algemeen</se:Name>
                    <se:Description>
                        <se:Title>Industrie: vervaardiging algemeen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>10</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: vervaardiging voeding, drank</se:Name>
                    <se:Description>
                        <se:Title>Industrie: vervaardiging voeding, drank</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>11</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: tabak</se:Name>
                    <se:Description>
                        <se:Title>Industrie: tabak</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>12</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: vervaardiging stoffen</se:Name>
                    <se:Description>
                        <se:Title>Industrie: vervaardiging stoffen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>13</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: kleding</se:Name>
                    <se:Description>
                        <se:Title>Industrie: kleding</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>14</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: leerproducten</se:Name>
                    <se:Description>
                        <se:Title>Industrie: leerproducten</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>15</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: hout- en timmerwerk</se:Name>
                    <se:Description>
                        <se:Title>Industrie: hout- en timmerwerk</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>16</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: verpakking, papier</se:Name>
                    <se:Description>
                        <se:Title>Industrie: verpakking, papier</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>17</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Drukkerijen</se:Name>
                    <se:Description>
                        <se:Title>Drukkerijen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>18</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Aardolieverwerking</se:Name>
                    <se:Description>
                        <se:Title>Aardolieverwerking</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>19</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR08.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: kunstmest en kunststof</se:Name>
                    <se:Description>
                        <se:Title>Industrie: kunstmest en kunststof</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>20</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: farmaceutisch</se:Name>
                    <se:Description>
                        <se:Title>Industrie: farmaceutisch</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>21</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR21.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: rubber, kunststof</se:Name>
                    <se:Description>
                        <se:Title>Industrie: rubber, kunststof</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>22</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: glas, keramiek, steen</se:Name>
                    <se:Description>
                        <se:Title>Industrie: glas, keramiek, steen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>23</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: ijzer, staal, metaal</se:Name>
                    <se:Description>
                        <se:Title>Industrie: ijzer, staal, metaal</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>24</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: verwarming, metaalbewerking</se:Name>
                    <se:Description>
                        <se:Title>Industrie: verwarming, metaalbewerking</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>25</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: vervaardiging telecom, ICT</se:Name>
                    <se:Description>
                        <se:Title>Industrie: vervaardiging telecom, ICT</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>26</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR26.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: elektrische apparaten</se:Name>
                    <se:Description>
                        <se:Title>Industrie: elektrische apparaten</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>27</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: vervaardiging machines</se:Name>
                    <se:Description>
                        <se:Title>Industrie: vervaardiging machines</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>28</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: vervaardiging auto's</se:Name>
                    <se:Description>
                        <se:Title>Industrie: vervaardiging auto's</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>29</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR29.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: vervaardiging transport</se:Name>
                    <se:Description>
                        <se:Title>Industrie: vervaardiging transport</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>30</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR30.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: vervaardiging interieur</se:Name>
                    <se:Description>
                        <se:Title>Industrie: vervaardiging interieur</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>31</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: vervaardiging instrumenten</se:Name>
                    <se:Description>
                        <se:Title>Industrie: vervaardiging instrumenten</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>32</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR10.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Industrie: reparatie en onderhoud</se:Name>
                    <se:Description>
                        <se:Title>Industrie: reparatie en onderhoud</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>33</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR33.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Energievoorziening</se:Name>
                    <se:Description>
                        <se:Title>Energievoorziening</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>35</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR35.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Winning en distributie van water</se:Name>
                    <se:Description>
                        <se:Title>Winning en distributie van water</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>36</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR36.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Afvalwater inzameling, behandeling</se:Name>
                    <se:Description>
                        <se:Title>Afvalwater inzameling, behandeling</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>37</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR36.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Behandeling van afval</se:Name>
                    <se:Description>
                        <se:Title>Behandeling van afval</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>38</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR38.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Sanering en overig afvalbeheer</se:Name>
                    <se:Description>
                        <se:Title>Sanering en overig afvalbeheer</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>39</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR39.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Projectontwikkeling in de bouw</se:Name>
                    <se:Description>
                        <se:Title>Projectontwikkeling in de bouw</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>41</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR41.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Aanleg en beheer infrastructuur</se:Name>
                    <se:Description>
                        <se:Title>Aanleg en beheer infrastructuur</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>42</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR42.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Grondverzet, bouwwerkzaamheden</se:Name>
                    <se:Description>
                        <se:Title>Grondverzet, bouwwerkzaamheden</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>43</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR43.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>17</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Groothandel in auto-onderdelen</se:Name>
                    <se:Description>
                        <se:Title>Groothandel in auto-onderdelen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>45</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR45.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Handelsbemiddeling en groothandels</se:Name>
                    <se:Description>
                        <se:Title>Handelsbemiddeling en groothandels</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>46</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR46.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Winkels, detailhandel</se:Name>
                    <se:Description>
                        <se:Title>Winkels, detailhandel</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>47</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR47.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Vervoer (goederen en personen)</se:Name>
                    <se:Description>
                        <se:Title>Vervoer (goederen en personen)</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>49</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR49.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Zeevaart, binnenvaart</se:Name>
                    <se:Description>
                        <se:Title>Zeevaart, binnenvaart</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>50</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR50.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Luchtvervoer (goederen en personen)</se:Name>
                    <se:Description>
                        <se:Title>Luchtvervoer (goederen en personen)</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>51</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR51.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Dienstverlening in vervoer, overslag</se:Name>
                    <se:Description>
                        <se:Title>Dienstverlening in vervoer, overslag</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>52</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#b34444</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR52.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Post en koeriers</se:Name>
                    <se:Description>
                        <se:Title>Post en koeriers</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>53</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR53.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Hotels, kamperen logies</se:Name>
                    <se:Description>
                        <se:Title>Hotels, kamperen logies</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>55</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR55.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Restaurants en cafes</se:Name>
                    <se:Description>
                        <se:Title>Restaurants en cafes</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>56</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR56.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Uitgeverijen</se:Name>
                    <se:Description>
                        <se:Title>Uitgeverijen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>58</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR58.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Productie van media</se:Name>
                    <se:Description>
                        <se:Title>Productie van media</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>59</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR59.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Media-omroepen</se:Name>
                    <se:Description>
                        <se:Title>Media-omroepen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>60</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR60.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Telecommunicatie</se:Name>
                    <se:Description>
                        <se:Title>Telecommunicatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>61</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR61.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>ICT software</se:Name>
                    <se:Description>
                        <se:Title>ICT software</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>62</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR62.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>ICT dienstverlening en advies</se:Name>
                    <se:Description>
                        <se:Title>ICT dienstverlening en advies</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>63</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR63.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Financien: banken</se:Name>
                    <se:Description>
                        <se:Title>Financien: banken</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>64</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR64.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Financien: fondsen</se:Name>
                    <se:Description>
                        <se:Title>Financien: fondsen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>65</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR64.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Overige financiele dienstverlening</se:Name>
                    <se:Description>
                        <se:Title>Overige financiele dienstverlening</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>66</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR64.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Verhuur en handel van onroerend goed</se:Name>
                    <se:Description>
                        <se:Title>Verhuur en handel van onroerend goed</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>68</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR68.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Advocatuur, notarissen, accountants</se:Name>
                    <se:Description>
                        <se:Title>Advocatuur, notarissen, accountants</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>69</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR69.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Concern, holding, P.R., organisatieadvies</se:Name>
                    <se:Description>
                        <se:Title>Concern, holding, P.R., organisatieadvies</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>70</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR70.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Keuring en controle</se:Name>
                    <se:Description>
                        <se:Title>Keuring en controle</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>71</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR71.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Speur- en ontwikkelingswerk</se:Name>
                    <se:Description>
                        <se:Title>Speur- en ontwikkelingswerk</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>72</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR72.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Reclame- en advertentiewerk</se:Name>
                    <se:Description>
                        <se:Title>Reclame- en advertentiewerk</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>73</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR73.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>20</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Overige specialistische zakelijke diensten</se:Name>
                    <se:Description>
                        <se:Title>Overige specialistische zakelijke diensten</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>74</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR74.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Veterinaire dienstverlening</se:Name>
                    <se:Description>
                        <se:Title>Veterinaire dienstverlening</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>75</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR75.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>16</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Verhuur en lease van transportmiddelen</se:Name>
                    <se:Description>
                        <se:Title>Verhuur en lease van transportmiddelen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>77</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR77.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Uitzendbureaus</se:Name>
                    <se:Description>
                        <se:Title>Uitzendbureaus</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>78</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR78.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Toerisme, reizen</se:Name>
                    <se:Description>
                        <se:Title>Toerisme, reizen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>79</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR79.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Beveiliging en opsporing</se:Name>
                    <se:Description>
                        <se:Title>Beveiliging en opsporing</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>80</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR80.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Facility management en reiniging</se:Name>
                    <se:Description>
                        <se:Title>Facility management en reiniging</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>81</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR81.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Administratieve diensten, congressen, beurzen</se:Name>
                    <se:Description>
                        <se:Title>Administratieve diensten, congressen, beurzen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>82</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR58.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Openbaar bestuur en overheidsdiensten</se:Name>
                    <se:Description>
                        <se:Title>Openbaar bestuur en overheidsdiensten</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>84</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR84.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Onderwijs</se:Name>
                    <se:Description>
                        <se:Title>Onderwijs</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>85</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR85.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Zorgaanbieders</se:Name>
                    <se:Description>
                        <se:Title>Zorgaanbieders</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>86</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR86.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Niet-zelfredzamen</se:Name>
                    <se:Description>
                        <se:Title>Niet-zelfredzamen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>87</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR87.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Welzijnswerk, kinderopvang</se:Name>
                    <se:Description>
                        <se:Title>Welzijnswerk, kinderopvang</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>88</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR88.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Kunsten</se:Name>
                    <se:Description>
                        <se:Title>Kunsten</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>90</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR90.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Bibliotheken, musea</se:Name>
                    <se:Description>
                        <se:Title>Bibliotheken, musea</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>91</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR91.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Kansspelen</se:Name>
                    <se:Description>
                        <se:Title>Kansspelen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>92</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR92.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Sport en recreatie</se:Name>
                    <se:Description>
                        <se:Title>Sport en recreatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>93</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR93.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Beroepsorganisaties en verenigingen</se:Name>
                    <se:Description>
                        <se:Title>Beroepsorganisaties en verenigingen</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>94</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR94.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>19</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-2</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Reparatie (consumenten-gerelateerd)</se:Name>
                    <se:Description>
                        <se:Title>Reparatie (consumenten-gerelateerd)</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>95</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR95.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Consumentenverzorging</se:Name>
                    <se:Description>
                        <se:Title>Consumentenverzorging</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>96</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#1b9922</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR96.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Huishoudens als werkgever</se:Name>
                    <se:Description>
                        <se:Title>Huishoudens als werkgever</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>97</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR97.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Productie van goederen door huishoudens</se:Name>
                    <se:Description>
                        <se:Title>Productie van goederen door huishoudens</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>98</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR98.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>Extraterritoriale organisaties</se:Name>
                    <se:Description>
                        <se:Title>Extraterritoriale organisaties</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>icon</ogc:PropertyName>
                            <ogc:Literal>99</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                   <se:MaxScaleDenominator>25000.0</se:MaxScaleDenominator>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>circle</se:WellKnownName>
                                <se:Fill>
                                    <se:SvgParameter name="fill">#f1f2f3</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#4448b3</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>22</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="NHR99.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule>
            </se:FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>