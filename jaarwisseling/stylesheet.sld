<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<StyledLayerDescriptor version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <Name/>
    <UserStyle>
      <Name/>
      <Title/>
      <FeatureTypeStyle>
        <Rule>
          <Name>Evenement</Name>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>type</PropertyName>
              <Literal>evenement</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="https://imroi.github.io/diversen/jaarwisseling/geel.svg"/>
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>28</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Onrust</Name>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>type</PropertyName>
              <Literal>onrust</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="https://imroi.github.io/diversen/jaarwisseling/rood.svg"/>
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>28</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Oov</Name>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>type</PropertyName>
              <Literal>oov</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="https://imroi.github.io/diversen/jaarwisseling/zwart.svg"/>
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>28</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Optioneel</Name>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>type</PropertyName>
              <Literal>optioneel</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="https://imroi.github.io/diversen/jaarwisseling/oranje.svg"/>
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>28</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Politie</Name>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>type</PropertyName>
              <Literal>politie</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="https://imroi.github.io/diversen/jaarwisseling/blauw.svg"/>
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>28</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Vuurwerkverbod</Name>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>type</PropertyName>
              <Literal>vuurwerkverbod</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="https://imroi.github.io/diversen/jaarwisseling/groen.svg"/>
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>28</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
