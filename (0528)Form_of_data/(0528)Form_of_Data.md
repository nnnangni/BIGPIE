2일차 (5/28)

### 교재선정

- 제대로 알고 쓰는 R통계분석로 교재 선정



### 1차시. 자료의 형태와 요약 1



#### 1. 자료(변수)의 두가지 형태

1) categorical(범주형) : 명목/순서

2) quantitative(양적): 연속/이산

- 명목(Norminal) 변수 : 순서 없는 범주를 가지는 변수

  예) 성별(남,여), 지역(서울,부산,광주..)

- 순서(Ordinal) 변수 : 순서가 있는 범주를 가지는 변수

  예) 자동차 크기(소형, 중형, 대형), 계층(상, 중, 하)

- 연속(Continuous) 변수 : 무수히 많은 다른 값을 가짐

  예) 키, 몸무게, 온도

- 이산(Discrete) 변수 : 몇 개의 다른 값만 가짐

  예) 고장 횟수, 가족 구성원의 수



#### 2. 범주형 자료의 요약

- 도수분포표
- 막대그래프
  - 각 범주가 하나의 막대로 표현됨
  - 순위별로 정리 -> 해석이 용이함
  - 파이차트 보다는 막대그래프가 보기 좋음
- 파이 차트
  - 각 범주는 파이의 한 Slice로 표현됨
  - 보통 %를 사용하여 모두 더해서 1이 되도록 함



#### 3. 양적 자료의 요약

- Graphical 요약

  - Dotplot, Stemplot, Histogram, Boxplot, Line graph, ...
  - 전체적인 분포의 패턴과 그 패턴으로부터 벗어난 극단적 관측치들(outliers)을 살펴봄

- 수치적 요약

  - 대표값(Center of distribution)

    : 산술평균, 중앙값, 최빈값 (범주형도 가능)

  - 산포도(Spread of distribution)

    : 범위, 사분위범위(IQR), 표준편차, ...

  

- 줄기와 잎 그림(Stemplot)
  - 실제 자료의 수치를 그대로 사용하며 분포의 형태를 보여주는 그림
  - 쉽고 빠르게 그릴 수 있으며 정보의 손실이 없음
  - 모든 값이 양수면서 데이터의 양이 많지 않을 경우 좋음
  - 두 개의 연관된 분포를 비교하고 싶을 때, 같은 줄기를 공유하는 back-to-back stemplot이 유용함



- 히스토그램 (Histogram)
  - 자료의 범위를 몇개의 구간으로 나누고 각 구간에 들어가는 관측값의 빈도 또는 상대빈도만을 나타내는 그림
  - dataset이 큰 경우(데이터가 50개 이상인 경우)
  - 히스토그램의 각 막대는 그 class의 빈도에 비례함



- Line graph(time plot)
  - 시계열 자료인 경우 x축을 시간으로 한 time plot에서 trend와 seasonal variation 등을 찾을 수 있음
  - Trend : a rise or fall that persists over time, despite small irregularities
  - Seasonal variation : a pattern that repeats itself at regular itervals of time