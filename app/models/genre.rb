class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'},
    { id: 2, name: 'ビジネス'},
    { id: 3, name: 'レジャー'},
    { id: 4, name: '食事'},
    { id: 5, name: 'その他'}
  ]
end
