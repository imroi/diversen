<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0.0">
  <NamedLayer>
    <Name>nipv_sfeerimpressie</Name>
    <UserStyle>
      <Name>nipv_sfeerimpressie</Name>
      <FeatureTypeStyle>
        <Rule>
          <Name>Sfeer</Name>
          <Title>Sfeer</Title>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="https://imroi.github.io/diversen/sfeerimpressie/${sfeer}.svg"/>
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>60</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule> 
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>

