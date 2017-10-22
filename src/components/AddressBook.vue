<template>
  <v-flex xs12>
    <v-card class="card--flex-toolbar">
      <v-toolbar card class="red darken-4">
        <v-toolbar-title class="white--text">Address Book</v-toolbar-title>
      </v-toolbar>

      <v-data-table :headers="headers" :items="items" hide-actions class="elevation-2">
        <template slot="items" scope="props">
          <td class="text-xs-left">{{props.item.text}}</td>
          <td class="text-xs-left">{{props.item.value}}</td>
        </template>
      </v-data-table>

    </v-card>
  </v-flex>
</template>
<script>
import { CONTRACT } from '../contract'

export default {
  data () {
    return {
      headers: [
        { align: 'left', text: 'name.#', value: 'name.#' },
        { align: 'left', text: 'BuckICoin Address', value: 'BuckICoin' },
      ],
      items: [
        {
          text: "oreilly.119",
          value: "0x5671cDae9f224d1309C1F28B1741827fD45b5F36"
        },
        {
          text: "rajasekera.3",
          value: "0xCcB1d0ca3C59a5098872D26826458c613C735Acd",
        },
      ]
    }
  },


}
</script>
