jQuery ->
  Morris.Bar
    element: 'acids_chart'
    data: $('acids_chart').data('acids')
    xkey: 'y'
    ykeys: ['a']
    labels: ['Series a']
