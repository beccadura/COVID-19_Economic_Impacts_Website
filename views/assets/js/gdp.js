
var data = {},
  datad =[],
  timeelapsed = 0;
$.post("http://localhost:8080/worldmap", function(worlddata){
  datad = worlddata.data;
  timeelapsed = worlddata.elapsed;
  for(var d = 0; d < datad.length;d++){
    data[datad[d].CountryCode] = {
      MedianAge:  datad[d].MedianAge,
      TotalCases: datad[d].TotalCases,
      TotalDeaths: datad[d].TotalDeaths,
      pop_2019: datad[d].pop_2019,
      pop_2020: datad[d].pop_2020
    };
  }
});
var svgMapDataGPD = {
  data: {
    pop_2019: {
      name: 'Population (2019)',
      format: '{0} People',
      thousandSeparator: ','
    },
    pop_2020: {
      name: 'Population (2020)',
      format: '{0} People',
      thousandSeparator: ','
    },
    TotalCases: {
      name: 'Total Cases',
      format: '{0} People',
      thousandSeparator: ',',
      thresholdMax: 1000000,
      thresholdMin: 1
    },
    TotalDeaths: {
      name: 'Total Deaths',
      format: '{0} People',
      thousandSeparator: ','
    },
    MedianAge: {
      name: 'Median COVID-19 Age',
      format: '{0} Years Old',
    }
  },
  applyData: 'TotalCases',
  values: data
}