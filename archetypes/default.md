+++
title = ""
date = {{ .Date }}
description="Recommandation n°{{ replace .File.ContentBaseName "-" " " | title }}"
[cover]
image = "images/{{ replace .File.ContentBaseName "-" " " | title }}.jpg"
caption=""
+++

{{< rawhtml >}}

{{< /rawhtml >}}