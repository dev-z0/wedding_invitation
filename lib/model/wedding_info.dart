final DateTime dday = DateTime(2024, 2, 18, 12, 30);

const String groom = '김대호';
const String bride = '김지영';

class WeddingHall {
  WeddingHall(this.name, this.address, this.tel, this.image, this.url);
  final String name;
  final String address;
  final String tel;
  final String image;
  final String url;
}

final WeddingHall weddingHall = WeddingHall(
    '엘블레스 다이아몬드홀',
    '서울 서초구 강남대로 213, 지하1층',
    '02-526-0300',
    'assets/images/elbless_map.jpg',
    'https://map.naver.com/p/entry/place/37688101?c=15.00,0,0,0,dh');
