{foreach from=$contributions item="contribution"}{$contribution.contribution_id},{literal}{"amount": {"value": {/literal}{"%.2f"|sprintf:$contribution.total_amount}{literal},"currency": "{/literal}{$contribution.currency}{literal}"},"reference": "{/literal}{$contribution.reference}{literal}","merchantAccount": "{/literal}{* Will be filled from form input. *}{literal}","shopperEmail": "{/literal}{$contribution.shopperEmail}{literal}","shopperIP": "{/literal}{$contribution.shopperIP}{literal}","shopperReference": "{/literal}{$contribution.shopperReference}{literal}","selectedRecurringDetailReference":"{/literal}{$contribution.selectedRecurringDetailReference}{literal}","recurring":{"contract":"RECURRING"},"shopperInteraction":"ContAuth"}{/literal}{"\n"}{/foreach}