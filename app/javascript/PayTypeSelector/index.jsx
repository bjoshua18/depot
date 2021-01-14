import React from 'react'

import NoPayType from './NoPayType';
import CheckPayType from './CheckPayType';
import CreditCardPayType from './CreditCardPayType';
import PurchaseOrderPayType from './PurchaseOrderPayType';

class PayTypeSelector extends React.Component {
	constructor(props) {
		super(props)
		this.onPayTypeSelected = this.onPayTypeSelected.bind(this)
		this.state = { selectedPayType: null}
	}

	onPayTypeSelected(event) {
		this.setState({ selectedPayType: event.target.value })
	}

	render() {
		let PayTypeCustomComponent = NoPayType
		switch (this.state.selectedPayType) {
			case '1':
				PayTypeCustomComponent = CheckPayType
				break
			case '2':
				PayTypeCustomComponent = CreditCardPayType
				break
			case '3':
				PayTypeCustomComponent = PurchaseOrderPayType
				break
		}

		return (
			<div>
				<div className="field">
					<label htmlFor="order_pay_type_id">{I18n.t('orders.form.pay_type')}</label>
					<select onChange={this.onPayTypeSelected} name="order[pay_type_id]" id="order_pay_type_id" defaultValue="">
						<option value="" disabled>{I18n.t('orders.form.pay_prompt_html')}</option>
						<option value="1">{I18n.t('orders.form.pay_types.check')}</option>
						<option value="2">{I18n.t('orders.form.pay_types.credit_card')}</option>
						<option value="3">{I18n.t('orders.form.pay_types.purchase_order')}</option>
					</select>
				</div>
				<PayTypeCustomComponent />
			</div>
		)
	}
}

export default PayTypeSelector