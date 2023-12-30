window.addEventListener('turbo:load', () => {

  // 金額を入力した数値をpriceInputという変数に格納する
const priceInput = document.getElementById("item-price");

priceInput.addEventListener("input", () => {
  const inputValue = priceInput.value;
  
  const addTaxDom = document.getElementById("add-tax-price");
    addTaxDom.innerHTML = Math.floor( inputValue / 10 )

    const profit = document.getElementById("profit");
    profit.innerHTML = inputValue - Math.floor( inputValue / 10 )
})

});