@@ -161,7 +161,7 @@ Write Something `&text= `.
>
> It makes confused API

> It is recommended to use `%20` (blank) only
> It is recommended to use `%20` (blank) and `-nl-` (new line) only

## Desc
Input desc over the Image.
@@ -233,14 +233,18 @@ Change text horizontal-align (x). write number **between 0~100**

`&fontAlign= ` : Default value is 50. center of image

> In case there are multiple lines in `&text= ` (`-nl-`), providing multiple `&fontAlign= ` will apply different horizontal-align to each line individually.

```
![header](https://capsule-render.vercel.app/api?text=Hello%World!&fontAlign=70)
```

## FontAlignY
Change text vertical-align (y). write number **between 0~100**

`&fontAlignY= ` : Default value is 50. center of image
`&fontAlignY= ` : Default value for one line is 50 (center of image). For multiple lines (separated by `-nl-`), default will be calculated to get lines stacked on top of each other and centered.

> In case there are multiple lines in `&text= ` (`-nl-`), providing multiple `&fontAlignY= ` will apply different vertical-align to each line individually.

```
![header](https://capsule-render.vercel.app/api?text=Hello%World!&fontAlignY=20)
