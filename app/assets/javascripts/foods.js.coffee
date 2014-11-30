jQuery ->
  Morris.Bar
    element: 'foods_chart'
    data: $('#foods_chart').data('foods')
    xkey: ''
    ykeys: ['tryptophan', 'rectified_tryptophan', 'methionine', 'phenylalanine', 'rectified_phenylalanine', 'lysine', 'rectified_lysine']
    labels: ['Series a']
