![header](https://capsule-render.vercel.app/api?type=waving&color=auto&height=300&section=header&text=여행%20동행%20프로젝트&fontSize=90&animation=fadeIn&fontAlignY=38&desc=여행%20동반자%20찾아서%20여행하기!&descAlignY=65&descAlign=62)

<p align='center'> 🏝️여행 동행 찾기👬
<p align='center'> 마음 맞는 동행을 찾아 함께 여행하고, 여행 일정을 계획하여 공유할 수 있습니다!


## Index
1. [프로젝트 소개](#프로젝트_소개)
2. [주요 기능](#주요_기능)
3. [실행 방법 및 준비물](#실행_방법_및_준비물)
4. [기술 스택](#기술_스택)
5. [협업 과정](#협업_과정)
6. [팀원](#팀원)


## 프로젝트_소개
```
https://capsule-render.vercel.app/api?
```
Just write query parameter end of this url. Like this

Markdown:
```
![header](https://capsule-render.vercel.app/api?type=wave&color=auto&height=300&section=header&text=capsule%20render&fontSize=90)
```

HTML:
```
<img src="https://capsule-render.vercel.app/api?type=wave&color=auto&height=300&section=header&text=capsule%20render&fontSize=90" />
```

## 주요_기능
Type data makes to change Background Image.
- [wave](#wave) : default
- [egg](#egg)
- [shark](#shark)
- [slice](#slice)
- [rect](#rect)
- [soft](#soft)
- [rounded](#rounded)
- [cylinder](#cylinder)
- [waving](#waving)
- [transparent](#transparent)

Write `&type= ` on the URL
```
![header](https://capsule-render.vercel.app/api?type=slice)
```

## 실행_방법_및_준비물
코로나 이후 여행에 대한 관심이 높아짐
  
  ![KakaoTalk_20230906_161942679](https://github.com/honghong77/TravelAndFindPartners/assets/134483747/9126dc66-5cf8-4239-a3d0-3a7916ad25ba)

  출처 : ConsumerInsight
  
- 개발 기간

  2023.07 ~ 2023.08 (약 2주)


## 기술_스택
You can **customize the list of colors** that will appear randomly only for `&color=auto` and `&color=gradient`.

Write `&customColorList= ` on the URL.

- If you use `&color=auto`, look at [pallete list](https://github.com/kyechan99/capsule-render/blob/master/src/pallete.json).
- If you use `&color=gradient`, look at [gradient list](https://github.com/kyechan99/capsule-render/blob/master/src/gradient.json).

Pick the color patterns you want and remember the `idx` value.

For example, if the idx values ​​are 0, 2, and 3, write: `&customColorList=0,2,3`

If you want to make many apperances of `idx=2`, you can write them repeatedly. (e.g. `&customColorList=0,2,2,2,2,3`)

```
![header](https://capsule-render.vercel.app/api?color=gradient&customColorList=0,2,2,5,30)
```

## 팀원
You can use the specified combination using `theme=`.

Even if `color` and `fontColor` are used, theme has the highest priority.

Check the list of available themes at [pallete_theme.json](https://github.com/kyechan99/capsule-render/blob/master/src/pallete_theme.json).

```
![reversal](https://capsule-render.vercel.app/api?type=rect&text=RECT&fontAlign=30&fontSize=30&desc=Use%20theme&descAlign=60&descAlignY=50&theme=radical)
```

> I'm currently adding combinations from the [Link:theme](https://github.com/anuraghazra/github-readme-stats/blob/master/themes/README.md) little by little.

