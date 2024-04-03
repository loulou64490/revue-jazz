+++
title = ""
date = {{ .Date }}
description="Recommandation n°{{ replace .File.ContentBaseName "-" " " | title }}"
tags=['','']
[cover]
image="posts/{{ replace .File.ContentBaseName "-" " " | title }}.jpg"
caption=""
+++

{{< rawhtml >}}

{{< /rawhtml >}}