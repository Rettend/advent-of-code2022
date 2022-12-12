for i in [3..1]
    { part1, part2, codename } = await import("/dist/#{i}/day#{i}.js")

    document.body.appendChild document.createElement 'pre'
        .innerText = "--- Day #{i}: #{codename} ---\n\nPart 1: #{part1}\nPart 2: #{part2}"

    document.body.appendChild document.createElement 'hr'
    document.body.appendChild document.createElement 'br'
