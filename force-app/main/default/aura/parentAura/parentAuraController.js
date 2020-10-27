({
    handleFilterChange: function(component, event) {
        console.log('in aura component');
        var filters = event.getParam('filters');
        component.set('v.message', filters.length > 0 ? 'Your selection: ' + filters.join() : 'No selection');
    },
    handleCallParent: function(component, event) {
        console.log('in second function');
        var childMsg = event.getParam('value');
        component.set('v.message', childMsg);
    }
})
