# lazarus-gtk-error

Icones de [GitHub - google/material-design-icons: Material Design icons by Google](https://github.com/google/material-design-icons) (diretório android)

material-design-icons/android/alert/add_alert/materialicons/black/res/drawable-mdpi/

e

material-design-icons/android/alert/add_alert/materialiconstwotone/black/res/drawable-mdpi/

![](images/devel-run.png)

No modo de desenvolvimento, as imagens nos notões (TBitBtn) aparecem corretas. Nas imagens (TImage) os ícones de duas tonalidades aparecem vazados. Na execução do programa, apenas o botão com a imagem de 48x48 pixel está correto. As imagens de duas tonalidades aparecem serrilhadas e as  com ícones de duas tonalidades aparecem vazadas. Na execução aparecem corretas.

![](images/files.png)

Os três primeiros ícones são escala de cinza + transparência e os dois últimos BGRA (cor + transparência). Se estivessem relacionados, a imagem nos dois últimos botões deveriam aparecer mas só aparece no último. 

Já nas imagens de duas tonalidades, apenas a segunda é RGBA mas nenhuma aparece.

Fechando e abrindo o projeto, as imagens dos botões desaparecem. Clicando em Glyph a janela de diálogo mostra uma imagem toda preta.