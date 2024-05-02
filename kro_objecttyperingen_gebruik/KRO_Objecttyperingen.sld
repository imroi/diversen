<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
    <NamedLayer>
        <se:Name>Kernregistratie Objecten Typeringen</se:Name>
        <UserStyle>
            <se:Name>Kernregistratie Objecten Typeringen</se:Name>
            <se:FeatureTypeStyle>
                <se:Rule>
                    <se:Name>Agrarische locatie</se:Name>
                    <se:Description>
                        <se:Title>Agrarische locatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>ag</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="ag.svg"/>
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
                    <se:Name>Bijeenkomstlocatie</se:Name>
                    <se:Description>
                        <se:Title>Bijeenkomstlocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>bk</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:DisplacementY>0</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="bk.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-1.4</se:DisplacementX>
                                <se:DisplacementY>0.5</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule> 
                <se:Rule>
                    <se:Name>Industriële locatie</se:Name>
                    <se:Description>
                        <se:Title>Industriële locatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>id</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="id.svg"/>
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
                    <se:Name>Insluitlocatie</se:Name>
                    <se:Description>
                        <se:Title>Insluitlocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>is</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="is.svg"/>
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
                    <se:Name>Kantoorlocatie</se:Name>
                    <se:Description>
                        <se:Title>Kantoorlocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>ka</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="ka.svg"/>
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
                    <se:Name>Logieslocatie</se:Name>
                    <se:Description>
                        <se:Title>Logieslocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>lo</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="lo.svg"/>
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
                    <se:Name>Nutslocatie</se:Name>
                    <se:Description>
                        <se:Title>Nutslocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>nu</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="nu.svg"/>
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
                    <se:Name>Onderwijslocatie</se:Name>
                    <se:Description>
                        <se:Title>Onderwijslocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>on</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="on.svg"/>
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
                    <se:Name>Overige locatie</se:Name>
                    <se:Description>
                        <se:Title>Overige locatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>ov</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="ov.svg"/>
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
                    <se:Name>Sportlocatie</se:Name>
                    <se:Description>
                        <se:Title>Sportlocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>sp</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="sp.svg"/>
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
                    <se:Name>Vervoer- en stallinglocatie</se:Name>
                    <se:Description>
                        <se:Title>Vervoer en stallinglocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>ve</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="ve.svg"/>
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
                    <se:Name>Winkellocatie</se:Name>
                    <se:Description>
                        <se:Title>Winkellocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>wi</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="wi.svg"/>
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
                    <se:Name>Woonlocatie</se:Name>
                    <se:Description>
                        <se:Title>Woonlocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>wo</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
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
                            <se:Size>16</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Graphic>
                            <se:ExternalGraphic>
                                <se:OnlineResource xlink:type="simple" xlink:href="wo.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>12</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>0</se:DisplacementX>
                                <se:DisplacementY>-1</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule> 	
                <se:Rule>
                    <se:Name>Woonzorglocatie</se:Name>
                    <se:Description>
                        <se:Title>Woonzorglocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>wz</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="wz.svg"/>
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
                    <se:Name>Zorglocatie</se:Name>
                    <se:Description>
                        <se:Title>Zorglocatie</se:Title>
                    </se:Description>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>hoofdtypering</ogc:PropertyName>
                            <ogc:Literal>zg</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <se:MaxScaleDenominator>25000</se:MaxScaleDenominator>
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
                                <se:OnlineResource xlink:type="simple" xlink:href="zg.svg"/>
                                <se:Format>image/svg+xml</se:Format>
                            </se:ExternalGraphic>
                            <se:Size>18</se:Size>
                            <se:Displacement>
                                <se:DisplacementX>-0.7</se:DisplacementX>
                                <se:DisplacementY>0.5</se:DisplacementY>
                            </se:Displacement>
                        </se:Graphic>
                    </se:PointSymbolizer>
                </se:Rule> 				
            </se:FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>